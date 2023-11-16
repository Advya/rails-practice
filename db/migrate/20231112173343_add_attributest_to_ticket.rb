class AddAttributestToTicket < ActiveRecord::Migration[7.1]
  def change
    add_column :tickets, :request_number, :integer
    add_column :tickets, :sequence_number, :integer
    add_column :tickets, :request_type, :string
    add_column :tickets, :request_action, :string
    add_column :tickets, :response_due_datetime, :date
  end
end
