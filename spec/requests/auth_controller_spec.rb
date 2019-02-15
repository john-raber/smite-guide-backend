require 'rails_helper'

RSpec.describe Api::V1::AuthController, type: :request do
  describe 'POST create' do
    let(:user) { FactoryBot.create(:user) }

    # all login params come from ../support/requests_helper.rb

    context 'with valid credentials' do
      let(:claims) { JWT.decode(json['jwt'], ENV['JWT_SECRET_KEY']) }

      it 'returns a 200 status code' do
        post api_v1_login_path, params: valid_login_params
        expect(response).to have_http_status(:accepted)
      end

      it 'returns json' do
        post api_v1_login_path, params: valid_login_params
        expect(response.content_type).to eq('application/json')
      end

      it 'returns a jwt token' do
        post api_v1_login_path, params: valid_login_params
        expect(claims[0]['user_id']).to eq(user.id)
      end
    end

    context 'with invalid email' do
      it 'returns a 406 status code' do
        post api_v1_login_path, params: invalid_login_email_params
        expect(response).to have_http_status(:not_acceptable)
      end
    end

    context 'with invalid password' do
      it 'returns a 406 status code' do
        post api_v1_login_path, params: invalid_login_password_params
        expect(response).to have_http_status(:not_acceptable)
      end
    end
  end
end
