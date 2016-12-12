class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table(:projects) do |i|
      i.column(:name, :string)
    end
  add_column(:employees, :project_id, :integer)
  end
end
