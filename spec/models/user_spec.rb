require 'rails_helper'

describe User do
  let(:user) { FactoryBot.create(:user) }

  it 'is an instance of User' do
    expect(subject).to be_an User
  end

  it 'is not persisted' do
    expect(subject).to_not be_persisted
  end

  it 'is valid with valid attributes' do
    expect(user).to be_valid
  end

  describe '#email' do
    it 'is required' do
      user.email = nil
      user.valid?
      expect(user.errors[:email].size).to eq(1)
    end

    it 'is unique' do
      another_user = FactoryBot.build(:user, email: user.email)
      another_user.valid?
      expect(another_user.errors[:email].size).to eq(1)
    end
  end

  describe '#password_digest' do
    it 'is required' do
      user.password_digest = nil
      user.valid?
      expect(user.errors[:password_digest].size).to eq(1)
    end
  end
end
