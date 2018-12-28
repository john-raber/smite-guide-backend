require 'rails_helper'

describe Ability do
  let(:ability) { FactoryBot.create(:ability) }

  xit 'is an instance of Ability' do
    expect(subject).to be_an Ability
  end

  xit 'is not persisted' do
    expect(subject).to_not be_persisted
  end

  xit 'is valid with valid attributes' do
    expect(ability).to be_valid
  end

  describe '#tier' do
    xit 'is required' do
      ability.tier = nil
      ability.valid?
      expect(ability.errors[:tier].size).to eq(1)
    end
  end

  describe '#description' do
    xit 'is required' do
      ability.description = nil
      ability.valid?
      expect(ability.errors[:description].size).to eq(1)
    end

    xit 'is unique' do
      another_ability = FactoryBot.build(:ability, description: ability.description)
      another_ability.valid?
      expect(another_ability.errors[:description].size).to eq(1)
    end
  end

  describe '#summary' do
    xit 'is required' do
      ability.summary = nil
      ability.valid?
      expect(ability.errors[:summary].size).to eq(1)
    end

    xit 'is unique' do
      another_ability = FactoryBot.build(:ability, summary: ability.summary)
      another_ability.valid?
      expect(another_ability.errors[:summary].size).to eq(1)
    end
  end

  describe '#menu_items' do
    xit 'is required' do
      ability.menu_items = nil
      ability.valid?
      expect(ability.errors[:menu_items].size).to eq(1)
    end
  end

  describe '#rank_items' do
    xit 'is required' do
      ability.rank_items = nil
      ability.valid?
      expect(ability.errors[:rank_items].size).to eq(1)
    end
  end
end
