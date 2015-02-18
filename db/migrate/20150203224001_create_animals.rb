class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.string :name
      t.string :pic
      t.string :fact

      t.timestamps
    end
  end
end
