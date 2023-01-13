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

  def low_expense_department
    @departments.select do |department|
      department.expenses < 500
    end
  end
end