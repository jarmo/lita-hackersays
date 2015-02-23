module Lita
  module Handlers
    class Hackersays < Handler
      route %r{^hacker(says?|quote)$}i, :command, command: true, help: {
        "hackersays" => "Returns a random quote from a hacker."
      }

      def command(response)

      end
    end

    Lita.register_handler(Hackersays)
  end
end
