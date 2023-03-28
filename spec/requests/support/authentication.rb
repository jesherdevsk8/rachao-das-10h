shared_context :login_user do
  let(:user) { create(:user) }

  before do
    sign_in(user)
  end
end
