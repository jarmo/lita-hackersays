require "spec_helper"

describe Lita::Handlers::Hackersays, lita_handler: true do
  it { is_expected.to route_command("hackersays")}
  it { is_expected.to route_command("hackersay")}
  it { is_expected.to route_command("hackerquote")}
end
