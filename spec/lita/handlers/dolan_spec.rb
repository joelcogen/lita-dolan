require "spec_helper"

describe Lita::Handlers::Dolan, lita_handler: true do
  it { routes_command("dolan").to(:dolan) }

  describe "dolan" do
    it "replies with a random dolan comic" do
      send_command("dolan")
      expect(DOLANS).to include(replies.last)
    end
  end
end
