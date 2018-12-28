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
  end

  describe '#description' do
    it 'is required' do
      ability.description = nil
      ability.valid?
      expect(ability.errors[:description].size).to eq(1)
    end

    it 'is unique' do
      another_ability = FactoryBot.build(:ability, description: ability.description)
      another_ability.valid?
      expect(another_ability.errors[:description].size).to eq(1)
    end
  end

  describe '#summary' do
    it 'is required' do
      ability.summary = nil
      ability.valid?
      expect(ability.errors[:summary].size).to eq(1)
    end

    it 'is unique' do
      another_ability = FactoryBot.build(:ability, summary: ability.summary)
      another_ability.valid?
      expect(another_ability.errors[:summary].size).to eq(1)
    end
  end

  describe '#menu_items' do
    it 'is required' do
      ability.menu_items = nil
      ability.valid?
      expect(ability.errors[:menu_items].size).to eq(1)
    end
  end

  describe '#rank_items' do
    it 'is required' do
      ability.rank_items = nil
      ability.valid?
      expect(ability.errors[:rank_items].size).to eq(1)
    end
  end

  describe '#url' do
    it 'is required' do
      ability.url = nil
      ability.valid?
      expect(ability.errors[:url].size).to eq(1)
    end
  end
end
