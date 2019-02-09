require 'rails_helper'
require 'faker'

RSpec.describe Api::V1::GodsController, type: :request do
  describe 'GET index' do
    let(:god_count) { God.all.size }

    it 'has a 200 status code' do
      get api_v1_gods_path
      expect(response).to have_http_status(:ok)
    end

    it 'renders json' do
      get api_v1_gods_path
      expect(response.content_type).to eq('application/json')
    end

    it 'displays all gods' do
      5.times do
        FactoryBot.create(:god, name: Faker::Name.name)
      end

      get api_v1_gods_path
      body = JSON.parse(response.body)
      expect(body.size).to eq(5)
    end
  end
end
