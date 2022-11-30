class CreateFirstCompliments < ActiveRecord::Migration[5.2]
  def change
    create_table :first_compliments do |t|
      t.string :title, index: true, unique: true

      t.timestamps
    end
  end
end
