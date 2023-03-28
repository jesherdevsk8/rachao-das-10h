require 'rails_helper'

RSpec.describe "Home", type: :request do
  include_context :login_user

  it "returns http success" do
    get "/home/index"
    expect(response).to have_http_status(:success)
  end
end
