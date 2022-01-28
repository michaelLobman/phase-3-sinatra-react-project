class CreateBottles < ActiveRecord::Migration[6.1]
  def change
    create_table :bottles do |t|
      t.string :name
      t.integer :aged_in_years
      t.integer :distillery_id
    end
  end
end
