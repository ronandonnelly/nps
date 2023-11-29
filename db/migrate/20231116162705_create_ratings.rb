class CreateRatings < ActiveRecord::Migration[7.1]
  def change
    create_table :ratings do |t|
      t.belongs_to :person, null: false, foreign_key: true
      t.integer :score

      t.timestamps
    end
  end
end
