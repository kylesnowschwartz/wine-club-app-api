class CreateWines < ActiveRecord::Migration[5.1]
  def change
    create_table :wines do |t|
      t.string :name
      t.decimal :price, precision: 18, scale: 2
      t.string :variety
      t.string :appellation
      t.string :winery
      t.string :comments
      t.date :tasted_on

      t.timestamps
    end
  end
end
