class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.string :address
      t.references :user, null: false, foreign_key: true
      t.references :trekking, null: false, foreign_key: true

      t.timestamps
    end
  end
end
