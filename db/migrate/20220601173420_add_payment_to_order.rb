class AddPaymentToOrder < ActiveRecord::Migration[6.1]
  def change
    add_column :orders, :number, :integer
    add_column :orders, :complement, :text
    add_column :orders, :name, :string
    add_column :orders, :cpf, :string
    add_column :orders, :cardnumber, :string
    add_column :orders, :code, :integer
    add_column :orders, :validates, :string
  end
end
