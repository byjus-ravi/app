class CreateBusers < ActiveRecord::Migration[7.0]
  def change
    create_table :busers do |t|
      t.string :name

      t.timestamps
    end
  end
end
