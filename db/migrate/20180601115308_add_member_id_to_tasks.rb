class AddMemberIdToTasks < ActiveRecord::Migration[5.0]
  def change
    add_column :tasks, :member_id, :string
  end
end
