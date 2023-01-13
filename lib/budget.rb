class Budget
  attr_reader :departments,
              :year

  def initialize(year)
    @departments = []
    @year = year
  end

  
end