module Devices
  class RegistrationsController < ApplicationController
    def create
      device.update(device_attributes)

      if device.errors.present?
        render jsonapi_errors: device.errors, status: :unprocessable_entity
      else
        render json: auth_token, status: :created
      end
    end

    private

    def device
      @device ||= Device.find_or_initialize_by(device_id: registration_params[:device_id])
    end

    def device_attributes
      registration_params.except(:device_id)
    end

    def registration_params
      params.require(:reg).permit(:device_id, :manufacturer, :model, :android_release)
    end

    def auth_token
      Knock::AuthToken.new payload: { device_id: device.id }
    end
  end
end