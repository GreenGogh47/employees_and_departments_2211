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
  
  describe '#employees' do
    it 'gives a list of all employees in the department' do
      customer_service.hire(@bobbi)
      customer_service.hire(@aaron)
      expect(@customer_service.employees).to eq([@bobbi, @aaron])
    end
  end

  xdescribe '#expense' do
    it 'is the total of all department expenses' do
      expect(@customer_service.expenses).to eq(0)
    end
  end

  xdescribe '#expenses' do
    it 'adds department expenses to #expenses' do
      @customer_service.expense(100)
      @customer_service.expense(25)
      expect(@customer_service.expenses).to eq(125)
    end
  end
end