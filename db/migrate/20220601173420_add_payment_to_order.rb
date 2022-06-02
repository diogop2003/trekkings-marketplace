class AddPaymentToOrder < ActiveRecord::Migration[6.1]
  def change
    add_column :orders, :number, :interger
    add_column :orders, :complement, :text
    add_column :orders, :cpf, :string
  end
end
