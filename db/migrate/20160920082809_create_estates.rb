class CreateEstates < ActiveRecord::Migration[5.0]
  def change
    create_table :estates do |t|
      t.string :size
      t.text :description
      t.float :price
      t.float :latitude
      t.float :longitude

      t.timestamps
    end

  end
end
