class AddCityAndPincodeToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :city, :string
    add_column :customers, :pincode, :string
  end
end
