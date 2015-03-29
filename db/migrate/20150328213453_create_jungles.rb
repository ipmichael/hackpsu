class CreateJungles < ActiveRecord::Migration
  def change
    create_table :jungles do |t|
      t.string :monkey
      t.string :eats

      t.timestamps
    end
  end
end
