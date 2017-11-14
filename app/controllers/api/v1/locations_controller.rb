class Api::V1::LocationsController < AuthenticateController
  def index
    device = current_user.devices.find(params[:device_id])
    render jsonapi: device.locations
  end
end
