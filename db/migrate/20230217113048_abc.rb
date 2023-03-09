class Abc < ActiveRecord::Migration[7.0]
  def change
    add_column :chapters ,:abc_id ,:integer
  end
end
