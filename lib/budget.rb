class Budget
  attr_reader :departments,
              :year

  def initialize(year)
    @departments = []
    @year = year
  end

  def add_department(department)
    @departments << department
  end
end