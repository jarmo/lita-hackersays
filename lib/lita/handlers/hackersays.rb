require "json"

module Lita
  module Handlers
    class Hackersays < Handler
      route %r{^hacker(says?|quote)$}i, :command, command: true, help: {
        "hackersays" => "Returns a random quote from a hacker."
      }

      def command(response)
        response.reply as_text(fetch_quote)
      rescue
        response.reply "Sorry, no quotes from me right now. I guess all hackers are actually busy with hacking ;)"
      end

      private

      def fetch_quote
        JSON.load http.get("http://hackersays.com/quote").body
      end

      def as_text(quote)
        "#{quote["c"]} — #{quote["a"]}"
      end
    end

    Lita.register_handler(Hackersays)
  end
end
