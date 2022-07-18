class Street
  attr_reader :name

  def initialize(name)
    @name = name
    @buildings = []
  end

  def add_building(building)
    @buildings << building
  end

  def buildings
    @buildings.map do |building|
      building.building_name
    end.sort
  end

  def number_of_available_apartments
    # METHOD 1
    # num_available = 0

    # @buildings.each do |building|
    #   building.list_apartments.each do |apt|
    #     num_available += 1 if !apt.is_rented?
    #   end
    # end

    # num_available

    # METHOD 2
    @buildings.reduce(0) do |total, building|
      total += building.list_apartments.count { |apt| !apt.is_rented? }
    end
  end

  def list_available_apartments
    available = {}

    @buildings.each do |building|
      available[building.building_name] = [] 
      building.list_apartments.each do |apt|
        # require 'pry'; binding.pry
        available[building.building_name] += apt.list_rooms_by_name_alphabetically if !apt.is_rented?
      end
    end

    available
  end
end