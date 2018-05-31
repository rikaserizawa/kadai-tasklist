class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :content
      t.references :member, foreign_key: true

      t.timestamps
    end
  end
end
