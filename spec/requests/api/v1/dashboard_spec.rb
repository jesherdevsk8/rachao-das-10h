require 'rails_helper'

RSpec.describe 'Api::V1::Dashboards', type: :request do
  include_context :login_user

  it 'GET /index' do
    get '/api/v1/dashboard'
    expect(response).to have_http_status(200)
  end
end
