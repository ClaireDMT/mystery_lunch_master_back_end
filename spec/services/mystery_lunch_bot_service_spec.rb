require_relative "../../app/services/mystery_lunch_bot_service.rb"


describe MysteryLunchBotService do
  describe "#generate" do
    it "return a json format" do
      mystery_lunch_bot = MysteryLunchBotService.new
      expect(mystery_lunch_bot).to be_an_instance_of(JSON)
    end
  end
end
