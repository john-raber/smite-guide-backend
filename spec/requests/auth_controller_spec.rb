require 'rails_helper'
require 'faker'

RSpec.describe Api::V1::AuthController, type: :request do
  describe 'POST create' do
    context 'with valid credentials' do
      let(:claims) { JWT.decode(json['jwt'], ENV['JWT_SECRET_KEY']) }

      it 'returns a 200 status code' do
        user = FactoryBot.create(
          :user,
          email: Faker::Internet.email,
          password: 'password',
          password_confirmation: 'password'
        )
        params = {
          user: {
            email: user.email,
            password: 'password'
          }
        }

        post api_v1_login_path, params: params
        expect(response).to have_http_status(:accepted)
      end

      it 'returns json' do
        user = FactoryBot.create(
          :user,
          email: Faker::Internet.email,
          password: 'password',
          password_confirmation: 'password'
        )
        params = {
          user: {
            email: user.email,
            password: 'password'
          }
        }

        post api_v1_login_path, params: params
        expect(response.content_type).to eq('application/json')
      end

      it 'returns a jwt token' do
        user = FactoryBot.create(
          :user,
          email: Faker::Internet.email,
          password: 'password',
          password_confirmation: 'password'
        )
        params = {
          user: {
            email: user.email,
            password: 'password'
          }
        }

        post api_v1_login_path, params: params
        expect(claims[0]['user_id']).to eq(user.id)
      end
    end
  end
end
