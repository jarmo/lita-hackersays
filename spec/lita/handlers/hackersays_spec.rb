require "spec_helper"

describe Lita::Handlers::Hackersays, lita_handler: true do
  it { is_expected.to route_command("hackersays")}
  it { is_expected.to route_command("hackersay")}
  it { is_expected.to route_command("hackerquote")}

  describe "#command" do
    it "returns quote from hackersays" do
      expect(subject).to receive(:fetch_quote).and_return(
        "c" => "Fools ignore complexity. Pragmatists suffer it. Some can avoid it. Geniuses remove it.",
        "a" => "Alan J. Perlis"
      )
      send_command "hackersays"
      expect(replies.last).to eq("Fools ignore complexity. Pragmatists suffer it. Some can avoid it. Geniuses remove it. — Alan J. Perlis")
    end

    it "handles errors" do
      expect(subject).to receive(:fetch_quote).and_raise(RuntimeError.new)
      send_command "hackersays"
      expect(replies.last).to eq("Sorry, no quotes from me right now. I guess all hackers are actually busy with hacking ;)")
    end
  end
end
