require './lib/department'
require './lib/employee'

RSpec.describe Department do
  before do
    @customer_service = Department.new("Customer Service") 
    @bobbi = Department.new({name: "Bobbi Jaeger", age: "30", salary: "$100000"})
    @aaron = Employee.new({name: "Aaron Tanaka", age: "25", salary: "90000"})
  end

  describe '#initialize' do
    it 'exists' do
      expect(@customer_service).to be_a(Department)
    end
    
    it 'has attributes' do
      expect(@customer_service.name).to eq("Customer Service")
      expect(@customer_service.employees).to eq([])
    end
  end
end