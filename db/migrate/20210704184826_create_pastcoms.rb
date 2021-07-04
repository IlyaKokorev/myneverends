class CreatePastcoms < ActiveRecord::Migration[5.2]
  def change
    create_table :pastcoms do |t|
      t.string :title

      t.timestamps
    end
  end
end
