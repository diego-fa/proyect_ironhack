class CreateRents < ActiveRecord::Migration[5.0]
  def change
    create_table :rents do |t|
      t.date :entry
      t.date :departure

      t.timestamps
    end
  end
end
