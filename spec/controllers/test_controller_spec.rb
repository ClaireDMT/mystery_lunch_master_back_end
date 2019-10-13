require "test_controller"


Rspec.describe TestController do
  describe "#{index}" do
    it "return a json format" do
      mystery_lunch_bot = Test.new
      expect(mystery_lunch_bot).to be_an_instance_of(JSON)
    end
  end
end
