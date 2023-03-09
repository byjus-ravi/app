class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.integer :owner_id
      t.string :assignee_id

      t.timestamps
    end
  end
end
