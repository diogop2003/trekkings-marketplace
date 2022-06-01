class AddDescriptionToTrekking < ActiveRecord::Migration[6.1]
  def change
    add_column :trekkings, :description, :string
  end
end
