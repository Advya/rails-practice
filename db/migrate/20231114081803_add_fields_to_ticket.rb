class AddFieldsToTicket < ActiveRecord::Migration[7.1]
  def change
    add_column :tickets, :date_times, :json, default: {}
    add_column :tickets, :service_area, :json, default: {}
    add_column :tickets, :excavation_info, :json, default: {}
  end
end
