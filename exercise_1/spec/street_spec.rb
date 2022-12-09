require './lib/street'
require './lib/building'
require './lib/apartment'

RSpec.describe Street do
  before(:each) do
    @adlington = Street.new("Adlington Road")

    @bldg = Building.new("623", "Savills Apartment Building")
    @zebra = Building.new("123", "Zebra Apartments")
    
    @apt_1 = Apartment.new
    @apt_2 = Apartment.new
    @apt_5 = Apartment.new

    @bldg.add_apartment(@apt_2)
    @bldg.add_apartment(@apt_5)
    @zebra.add_apartment(@apt_1)

    @adlington.add_building(@bldg)
    @adlington.add_building(@zebra)
  end

  describe "#initialize" do
    it "can be created" do
      expect(Street).to respond_to(:new).with(1).arguments
      expect(@adlington).to be_a Street
    end

    it "has a name and a way to read that data" do
      expect(@adlington.name).to eq("Adlington Road")
    end
  end

  context "adding and listing buildings" do
    describe "#add_building" do
      it "should be able to add your owned Buildings on this street" do
        expect { @adlington.add_building(@bldg) }.to_not raise_error
      end
    end

    describe "#buildings" do
      it "should be able to list, alphabetically by name, the buildings you own on this street" do
        expect(@adlington.buildings.length).to eq(2)
        expect(@adlington.buildings).to match(["Savills Apartment Building", "Zebra Apartments"])
      end
    end
  end

  describe "#number_of_available_apartments" do
    it "must be able to state the number of Apartments that are not currently rented" do
      expect(@adlington.number_of_available_apartments).to eq(3)
    end
  end

  describe "#list_available_apartments" do
    xit "should also be able to list the names of the Buildings that have available (non-rented) Apartments, and the names of the Rooms in each available Apartment" do
      @apt_1.add_room(Room.new("bedroom"))
      @apt_1.add_room(Room.new("laundry"))

      @apt_2.add_room(Room.new("bedroom"))
      @apt_2.add_room(Room.new("laundry"))
      @apt_2.add_room(Room.new("bathroom"))
      @apt_2.add_room(Room.new("kitchen"))
      
      @apt_5.add_room(Room.new("bedroom"))
      @apt_5.add_room(Room.new("laundry"))
      @apt_5.add_room(Room.new("bathroom"))


      expect(@adlington.list_available_apartments).to eq({
        "Zebra Apartments" => ["bedroom", "laundry"],
        "Savills Apartment Building" => ["bathroom", "bedroom", "kitchen", "laundry"],
        "Savills Apartment Building" => ["bathroom", "bedroom", "laundry"]
      })
    end
  end
end