class Zoo
  attr_reader :cages, :employees

  def initialize(name, season_opening_date, season_closing_date)
    @name = name
    @season_opening_date = season_opening_date
    @season_closing_date = season_closing_date
    @cages = []
    @employees = []
    10.times do
      @cages << Cage.new
    end
  end

  def add_employee(worker)
    @employees << worker
  end

  def open?(date)
    @season_opening_date <= date && date <= @season_closing_date
  end

  def add_animal(animal)
    @cages.each do |cage|
      if cage.empty?
        cage.animal = animal
        return
      end
    end
    return "Your zoo is already at capacity!"
  end
end
