class Api::DataController < ApplicationController
  protect_from_forgery with: :null_session

  def receive_data
    json_data = JSON.parse(request.body.read)

    json_data.deep_transform_keys!(&:underscore)

    excavator_params = json_data.delete('excavator')

    @ticket = Ticket.new(json_data)
    @ticket.build_excavator(excavator_params)

    if @ticket.save
      render json: { status: 'success', message: 'Data received and saved successfully' }
    else
      render json: { status: 'error', message: @ticket.errors.full_messages.join(', ') }, status: :unprocessable_entity
    end
  rescue JSON::ParserError => e
    render json: { status: 'error', message: 'Invalid JSON format' }, status: :unprocessable_entity
  end
end
