require './lib/department'
require './lib/employee'
require './lib/budget'

RSpec.describe Department do
  before do
    @budget = Budget.new

    @customer_service = Department.new("Customer Service") 
    @sales = Department.new("Sales") 

    @bobbi = Department.new({name: "Bobbi Jaeger", age: "30", salary: "$100000"})
    @aaron = Employee.new({name: "Aaron Tanaka", age: "25", salary: "90000"})
    @craig = Department.new({name: "Craig Carle", age: "30", salary: "$200000"})
    @aaron = Employee.new({name: "Tony Stark", age: "25", salary: "99999999"})
  end

  describe '#initialize' do
    it 'exists' do
      expect(@budget).to be_a(Budget)
    end
    
    it 'has attributes' do
      expect(@budget.year).to eq(2010)
      expect(@budget.departments).to eq([])
    end
  end
end