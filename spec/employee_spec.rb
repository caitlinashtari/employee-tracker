require('spec_helper')

describe(Employee) do
  describe('#project') do
    it('returns the project the employee is working on') do
      project = Project.create({:name => "Washing Floooooor"})
      employee = Employee.create({:name => "Peter Gibbons", :project_id => project.id, :division_id => nil})
      expect(employee.project()).to(eq(project))
    end
  end

  describe('#division') do
    it('returns the division the employee is in') do
      division = Division.create({:name => "QA"})
      employee = Employee.create({:name => "Hans C. Anderson", :project_id => nil, :division_id => division.id})
      expect(employee.division).to(eq(division))
    end
  end
end
