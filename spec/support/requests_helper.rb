module Requests
  module JsonHelpers
    def json
      JSON.parse(response.body)
    end
  end

  module ParamHelpers
    def valid_user_create_params
      {
        user: {
          email: 'john@example.com',
          password: 'password'
        }
      }
    end

    def valid_login_params
      {
        user: {
          email: user.email,
          password: 'password'
        }
      }
    end

    def invalid_email_params
      {
        user: {
          email: 'password',
          password: 'password'
        }
      }
    end

    def invalid_password_params
      {
        user: {
          email: user.email,
          password: 'wrong'
        }
      }
    end
  end
end
