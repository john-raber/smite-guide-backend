module Requests
  module JsonHelpers
    def json
      JSON.parse(response.body)
    end
  end

  module ParamHelpers
    def user_login_params
      {
        user: {
          email: user.email,
          password: 'password'
        }
      }
    end
  end
end