require './lib/building'
require './lib/apartment'

RSpec.describe Building do
  let(:building) { Building.new("623", "Savills Apartment Building") }

  describe "#initialize" do
    it "can be created" do
      expect(Building).to respond_to(:new).with(2).arguments
      expect(building).to be_a Building
    end

    it "has attributes and a way to read that data" do
      expect(building.building_number).to eq("623")
      expect(building.building_name).to eq("Savills Apartment Building")
    end
  end

  context "adding and listing apartments" do
    before(:each) do
      @apt_1 = Apartment.new
      @apt_2 = Apartment.new
      @apt_5 = Apartment.new

      building.add_apartment(@apt_1)
      building.add_apartment(@apt_2)
      building.add_apartment(@apt_5)
    end

    describe "@apartments" do
      it "can have up to 4 Apartments" do
        expect(building.instance_variable_get(:@apartments).length).to eq(3)
      end
    end

    describe "#list_apartments" do
      it "can list those list those Apartments" do
        expect(building.list_apartments).to match([@apt_1, @apt_2, @apt_5])
      end
    end
  end
end