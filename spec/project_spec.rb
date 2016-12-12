require('spec_helper')

describe(Project) do
  describe('#employees') do
    it('tells which employees are working on it') do
      project = Project.create({:name => "Project X"})
      employee1 = Employee.create({:name => "Dr. Faust", :division_id => nil, :project_id => project.id})
      employee2 = Employee.create({:name => "Dr. Sanjay Goopta", :division_id => nil, :project_id => project.id})
      expect(project.employees).to(eq([employee1, employee2]))
    end
  end
end
