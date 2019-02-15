require 'rails_helper'

RSpec.describe Api::V1::UsersController, type: :request do
  describe 'POST create' do

    # all params come from ../support/requests_helper.rb

    context 'with valid input' do
      let(:claims) { JWT.decode(json['jwt'], ENV['JWT_SECRET_KEY']) }

      it 'returns a 201 status code' do
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

    context 'when email is missing' do
      it 'returns the missing email error message' do
        post api_v1_users_path, params: user_create_email_missing
        expect(json['error']['email']).to include("can't be blank")
      end
    end

    context 'with a duplicate email' do
      let(:user) { FactoryBot.create(:user) }

      it 'returns a 406 status code' do
        post api_v1_users_path, params: user_create_duplicate_email
        expect(json['error']['email']).to include('has already been taken')
      end
    end

    context 'when password is missing' do
      it 'returns the missing password error message' do
        post api_v1_users_path, params: user_create_password_missing
        expect(json['error']['password']).to include("can't be blank")
      end
    end
  end
end
