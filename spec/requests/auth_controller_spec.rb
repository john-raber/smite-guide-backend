require 'rails_helper'

RSpec.describe Api::V1::AuthController, type: :request do
  describe 'POST create' do
    context 'with valid credentials' do
      let(:claims) { JWT.decode(json['jwt'], ENV['JWT_SECRET_KEY']) }
      let(:user) { FactoryBot.create(:user) }

      # user_login_params come from ../support/requests_helper.rb

      it 'returns a 200 status code' do
        post api_v1_login_path, params: user_login_params
        expect(response).to have_http_status(:accepted)
      end

      it 'returns json' do
        post api_v1_login_path, params: user_login_params
        expect(response.content_type).to eq('application/json')
      end

      it 'returns a jwt token' do
        post api_v1_login_path, params: user_login_params
        expect(claims[0]['user_id']).to eq(user.id)
      end
    end
  end
end
