class AddDivisionIdToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column(:projects, :division_id, :integer)
  end
end
