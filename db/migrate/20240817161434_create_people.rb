class CreatePeople < ActiveRecord::Migration[7.2]
  def change
    create_table :people do |t|
      t.string :name
      t.date :date_of_passing
      t.string :relationship
      t.string :byline
      t.string :about

      t.timestamps
    end
  end
end
