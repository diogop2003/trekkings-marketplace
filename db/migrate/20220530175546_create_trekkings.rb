class CreateTrekkings < ActiveRecord::Migration[6.1]
  def change
    create_table :trekkings do |t|
      t.string :name
      t.float :price
      t.string :category
      t.references :user

      t.timestamps
    end
  end
end
