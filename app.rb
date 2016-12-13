require("sinatra")
require("sinatra/reloader")
require('sinatra/activerecord')
also_reload("lib/**/*.rb")
require("./lib/employee")
require("./lib/project")
require("./lib/division")
require("pg")

get('/') do
  @divisions = Division.all()
  erb(:index)
end

post('/new_division') do
  @divisions = Division.all()
  division = params.fetch('division_name')
  Division.create({:name => division})
  erb(:index)
end

post('/new_project') do
  @divisions = Division.all()
  division = params.fetch('division_id')
  project = params.fetch('project_name')
  Project.create({:name => project, :division_id => division})
  erb(:index)
end

post('/new_employee') do
  @divisions = Division.all()
  employee = params.fetch('employee_name')
  division = params.fetch("employee_division_id")
  Employee.create({:name => employee, :division_id => division})
  erb(:index)
end

get('/employees') do
  @employees = Employee.all()
  erb(:employees)
end

patch('/employee/:id') do
  @employee = Employee.find(params.fetch('id').to_i)
  @employee.update({:project_id => params.fetch('project')})
  erb(:employee)
end
