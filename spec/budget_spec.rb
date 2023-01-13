require './lib/department'
require './lib/employee'
require './lib/budget'

RSpec.describe Budget do
  before do
    @budget = Budget.new(2022)

    @customer_service = Department.new("Customer Service") 
    @sales = Department.new("Sales") 

    @bobbi = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "$100000"})
    @aaron = Employee.new({name: "Aaron Tanaka", age: "25", salary: "90000"})
    @craig = Employee.new({name: "Craig Carle", age: "30", salary: "$200000"})
    @aaron = Employee.new({name: "Tony Stark", age: "25", salary: "99999999"})

    @customer_service.hire(@bobbi)
    @customer_service.hire(@aaron)
    @sales.hire(@craig)
    @sales.hire(@aaron)
  end

  describe '#initialize' do
    it 'exists' do
      expect(@budget).to be_a(Budget)
    end
    
    it 'has attributes' do
      expect(@budget.year).to eq(2022)
      expect(@budget.departments).to eq([])
    end
  end

  describe '#add_department' do
    it 'adds a department to the budget' do
      @budget.add_department(@customer_service)
      expect(@budget.departments).to eq([@customer_service])
      @budget.add_department(@sales)
      expect(@budget.departments).to eq([@customer_service, @sales])
    end
  end

  describe '#low_expense_department' do
    it 'lists all departments that have expenses less that $500' do
      @customer_service.expense(50)
      @sales.expense(1200)
      expect(@budget.low_expense_department).to eq([@customer_service])
      @customer_service.expense(449)
      expect(@budget.low_expense_department).to eq([@customer_service])
      @customer_service.expense(1)
      expect(@budget.low_expense_department).to eq([])
    end
  end
end