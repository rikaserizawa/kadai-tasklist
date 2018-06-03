class AddMemberIdToTasks < ActiveRecord::Migration[5.0]
  def change
    add_reference :tasks, :member, foreign_key: true
  end
end
