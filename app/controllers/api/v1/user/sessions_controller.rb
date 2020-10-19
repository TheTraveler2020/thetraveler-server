module Api
  module V1
    module User
      class SessionsController < DeviseTokenAuth::SessionsController
        private

        def render_create_success
          data = @resource.token_validation_response
          # data.merge!(AdministratorSerializer.new(@resource).as_json)
          render json: {
            success: true,
            data: resource_data(resource_json: data)
          }
        end
      end
    end
  end
end
