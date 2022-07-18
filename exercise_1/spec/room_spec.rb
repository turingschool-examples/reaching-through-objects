require './spec/spec_helper'
require './lib/room'

RSpec.describe Room do
  let(:bathroom) { Room.new("bathroom") }

  describe "#initialize" do
    it "can be created" do
      expect(Room).to respond_to(:new).with(1).argument
      expect(bathroom).to be_a Room
    end

    it "has a name and a way to read that data" do
      expect(bathroom.name).to eq("bathroom")
    end
  end

  describe "#name" do
    it "should not have a setter" do
      expect(bathroom).to_not respond_to(:name=)
    end
  end
end