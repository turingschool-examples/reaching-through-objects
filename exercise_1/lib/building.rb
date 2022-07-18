class Building
  attr_reader :building_number,
              :building_name

  def initialize(building_number, building_name)
    @building_number = building_number
    @building_name = building_name
    @apartments = []
  end

  def add_apartment(apt)
    @apartments << apt
  end

  def list_apartments
    @apartments
  end
end