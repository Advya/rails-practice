class Ticket < ApplicationRecord
  has_one :excavator
  accepts_nested_attributes_for :excavator

  validates_presence_of :request_number, :sequence_number, :request_type, :request_action
end
