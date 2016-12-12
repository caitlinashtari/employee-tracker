require('spec_helper')

describe(Division) do
  describe('#employees') do
    it('tells which employees are in it') do
      division = Division.create({:name => "Quality Control"})
      employee1 = Employee.create({:name => "Dr. Strangelove", :division_id => division.id, :project_id => nil})
      employee2 = Employee.create({:name => "Dr. Who", :division_id => division.id, :project_id => nil})
      expect(division.employees).to(eq([employee1, employee2]))
    end
  end
end
