class AddExcavatorReferenceToTicket < ActiveRecord::Migration[7.1]
  def change
    add_reference :excavators, :ticket
  end
end
