class CreatePrecoms < ActiveRecord::Migration[5.2]
  def change
    create_table :precoms do |t|
      t.string :title

      t.timestamps
    end
  end
end
