class SessionsController < DeviseTokenAuth::SessionsController
  private

  def render_create_success
    data = @resource.token_validation_response
    data['role'] = @resource.roles&.first&.name
    # data.merge!(AdministratorSerializer.new(@resource).as_json)
    render json: {
      success: true,
      data: data
    }
  end
end
