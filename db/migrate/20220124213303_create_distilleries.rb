class CreateDistilleries < ActiveRecord::Migration[6.1]
  def change
    create_table :distilleries do |t|
      t.string :name
      t.integer :year_established
      t.integer :region_id
    end
  end
end
