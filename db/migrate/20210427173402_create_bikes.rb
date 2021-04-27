class CreateBikes < ActiveRecord::Migration[6.0]
  def change
    create_table :bikes do |t|
      t.string :bike_name
      t.string :bike_address
      t.string :bike_description
      t.integer :price
      t.boolean :availability
      t.string :bike_url
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
