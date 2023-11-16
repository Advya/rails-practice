class AddAttributestToExcavator < ActiveRecord::Migration[7.1]
  def change
    add_column :excavators, :company_name, :string
    add_column :excavators, :address, :string
    add_column :excavators, :crew_on_site, :boolean

  end
end
