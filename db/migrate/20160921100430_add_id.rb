class AddId < ActiveRecord::Migration[5.0]
  def change
  	add_reference :estates, :user, index: true
  end
end
