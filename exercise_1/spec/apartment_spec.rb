require './spec/spec_helper'
require './lib/apartment'

RSpec.describe Apartment do
  let(:apartment) { Apartment.new }

  describe "#initialize" do
    it "can be created" do
      expect(Apartment).to respond_to(:new).with(0).arguments
      expect(apartment).to be_an Apartment
    end

    it "is not rented by default" do
      expect(apartment.instance_variable_get(:@rented)).to eq(false)
    end
  end

  describe "#is_rented?" do
    it "can state whether or not it is currently rented" do
      expect(apartment.is_rented?).to be false
      apartment.rent
      expect(apartment.is_rented?).to be true
    end
  end

  context "adding and listing rooms" do
    before(:each) do
      bathroom = Room.new("bathroom")
      
      apartment.add_room(bathroom)
      apartment.add_room(Room.new("laundry"))
      apartment.add_room(Room.new("kitchen"))
      apartment.add_room(Room.new("bedroom"))
    end

    describe "@rooms" do
      it "can have up to 4 Rooms" do
        expect(apartment.instance_variable_get(:@rooms).length).to eq(4)
      end
    end

    describe "#list_rooms_by_name_alphabetically" do
      it "can list those Rooms by name, alphabetically" do
        expect(apartment.list_rooms_by_name_alphabetically).to match(["bathroom", "bedroom", "kitchen", "laundry"])
      end
    end
  end
end