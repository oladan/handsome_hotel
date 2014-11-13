class CreateHotels < ActiveRecord::Migration
  def change
    create_table :hotels do |t|
      t.string :title
      t.text :description
      t.boolean :breakfast
      t.decimal :price, precision: 10, scale: 2

      t.timestamps
    end
  end
end
