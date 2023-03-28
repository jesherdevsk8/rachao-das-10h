module IntegrationHelpers
  def self.included(base)
    base.class_eval do
      include Warden::Test::Helpers

      setup :setup_integration
      teardown :teardown_integration
    end
  end

  def sign_in(resource)
    login_as(resource)
  end

  def sign_out(scope)
    logout scope
  end

  protected

  def setup_integration
    Warden.test_mode!
  end

  def teardown_integration
    Warden.test_reset!
  end
end
