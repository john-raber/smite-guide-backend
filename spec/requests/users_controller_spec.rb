require 'rails_helper'

RSpec.describe Api::V1::UsersController, type: :request do
  describe 'POST create' do
    context 'with valid input' do
      let(:claims) { JWT.decode(json['jwt'], ENV['JWT_SECRET_KEY']) }

      it 'returns a status code' do
        post api_v1_users_path, params: valid_user_create_params
        expect(response).to have_http_status(:created)
      end

      it 'returns json' do
        post api_v1_users_path, params: valid_user_create_params
        expect(response.content_type).to eq('application/json')
      end

      it 'returns a jwt token' do
        post api_v1_users_path, params: valid_user_create_params
        expect(claims[0]['user_id']).to eq(User.last.id)
      end

      it 'creates a new user' do
        expect {
          post api_v1_users_path, params: valid_user_create_params
        }.to change(User, :count).by(1)
      end
    end
  end
end
