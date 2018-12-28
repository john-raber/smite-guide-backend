require 'rails_helper'

describe Ability do
  let(:ability) { FactoryBot.create(:ability) }

  it 'is an instance of Ability' do
    expect(subject).to be_an Ability
  end

  it 'is not persisted' do
    expect(subject).to_not be_persisted
  end

  it 'is valid with valid attributes' do
    expect(ability).to be_valid
  end

  describe '#tier' do
    it 'is required' do
      ability.tier = nil
      ability.valid?
      expect(ability.errors[:tier].size).to eq(1)
    end

    it 'is unique within the scope of each god' do
      another_ability = FactoryBot.build(:ability, tier: ability.tier, god: ability.god)
      another_ability.valid?
      expect(another_ability.errors[:tier].size).to eq(1)
    end
  end

  describe '#menu_items' do
    it 'is required' do
      ability.menu_items = nil
      ability.valid?
      expect(ability.errors[:menu_items].size).to eq(1)
    end
  end
end
