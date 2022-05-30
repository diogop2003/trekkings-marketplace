class AddImageToTrekking < ActiveRecord::Migration[6.1]
  def change
    add_column :trekkings, :url_image, :string
  end
end
