class AddPaymentToOrder < ActiveRecord::Migration[6.1]
  def change
    add_column :orders, :number, :interger
    add_column :orders, :complement, :text
    add_column :orders, :name, :string
    add_column :orders, :cpf, :string
    add_column :orders, :cardnumber, :text
    add_column :orders, :code, :interger
    add_column :orders, :validates, :string
  end
end
