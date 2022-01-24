class CreateDistilleries < ActiveRecord::Migration[6.1]
  def change
    create_table :distilleries do |t|
      t.string :distillery_name
      t.integer :year_established
      t.boolean :currently_open?
      t.integer :region_id
    end
  end
end
