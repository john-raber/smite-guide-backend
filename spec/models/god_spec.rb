require 'rails_helper'

describe God do
  let(:god) { FactoryBot.create(:god) }

  it 'is an instance of God' do
    expect(subject).to be_an God
  end

  it 'is not persisted' do
    expect(subject).to_not be_persisted
  end

  it 'is valid with valid attributes' do
    expect(god).to be_valid
  end

  # describe '#ability_1' do
  #   it 'is required' do
  #     god.ability_1 = nil
  #     god.valid?
  #     expect(god.errors[:ability_1].size).to eq(1)
  #   end
  #
  #   it 'is unique' do
  #     another_god = FactoryBot.build(:god, ability_1: god.ability_1)
  #     another_god.valid?
  #     expect(another_god.errors[:ability_1].size).to eq(1)
  #   end
  # end
  #
  # describe '#ability_2' do
  #   it 'is required' do
  #     god.ability_2 = nil
  #     god.valid?
  #     expect(god.errors[:ability_2].size).to eq(1)
  #   end
  #
  #   it 'is unique' do
  #     another_god = FactoryBot.build(:god, ability_2: god.ability_1)
  #     another_god.valid?
  #     expect(another_god.errors[:ability_2].size).to eq(1)
  #   end
  # end
  #
  # describe '#ability_3' do
  #   it 'is required' do
  #     god.ability_3 = nil
  #     god.valid?
  #     expect(god.errors[:ability_3].size).to eq(1)
  #   end
  #
  #   it 'is unique' do
  #     another_god = FactoryBot.build(:god, ability_3: god.ability_1)
  #     another_god.valid?
  #     expect(another_god.errors[:ability_3].size).to eq(1)
  #   end
  # end
  #
  # describe '#ability_4' do
  #   it 'is required' do
  #     god.ability_4 = nil
  #     god.valid?
  #     expect(god.errors[:ability_4].size).to eq(1)
  #   end
  #
  #   it 'is unique' do
  #     another_god = FactoryBot.build(:god, ability_4: god.ability_1)
  #     another_god.valid?
  #     expect(another_god.errors[:ability_4].size).to eq(1)
  #   end
  # end
  #
  # describe '#ability_5' do
  #   it 'is required' do
  #     god.ability_5 = nil
  #     god.valid?
  #     expect(god.errors[:ability_5].size).to eq(1)
  #   end
  #
  #   it 'is unique' do
  #     another_god = FactoryBot.build(:god, ability_5: god.ability_1)
  #     another_god.valid?
  #     expect(another_god.errors[:ability_5].size).to eq(1)
  #   end
  # end

  describe '#attack_speed' do
    it 'is required' do
      god.attack_speed = nil
      god.valid?
      expect(god.errors[:attack_speed].size).to eq(1)
    end
  end

  describe '#attack_speed_per_level' do
    it 'is required' do
      god.attack_speed_per_level = nil
      god.valid?
      expect(god.errors[:attack_speed_per_level].size).to eq(1)
    end
  end

  describe '#hp5_per_level' do
    it 'is required' do
      god.hp5_per_level = nil
      god.valid?
      expect(god.errors[:hp5_per_level].size).to eq(1)
    end
  end

  describe '#health' do
    it 'is required' do
      god.health = nil
      god.valid?
      expect(god.errors[:health].size).to eq(1)
    end
  end

  describe '#health_per_five' do
    it 'is required' do
      god.health_per_five = nil
      god.valid?
      expect(god.errors[:health_per_five].size).to eq(1)
    end
  end

  describe '#health_per_level' do
    it 'is required' do
      god.health_per_level = nil
      god.valid?
      expect(god.errors[:health_per_level].size).to eq(1)
    end
  end

  describe '#lore' do
    it 'is required' do
      god.lore = nil
      god.valid?
      expect(god.errors[:lore].size).to eq(1)
    end
  end

  describe '#mp5_per_level' do
    it 'is required' do
      god.mp5_per_level = nil
      god.valid?
      expect(god.errors[:mp5_per_level].size).to eq(1)
    end
  end

  describe '#magic_protection' do
    it 'is required' do
      god.magic_protection = nil
      god.valid?
      expect(god.errors[:magic_protection].size).to eq(1)
    end
  end

  describe '#magic_protection_per_level' do
    it 'is required' do
      god.magic_protection_per_level = nil
      god.valid?
      expect(god.errors[:magic_protection_per_level].size).to eq(1)
    end
  end

  describe '#magical_power' do
    it 'is required' do
      god.magical_power = nil
      god.valid?
      expect(god.errors[:magical_power].size).to eq(1)
    end
  end

  describe '#magical_power_per_level' do
    it 'is required' do
      god.magical_power_per_level = nil
      god.valid?
      expect(god.errors[:magical_power_per_level].size).to eq(1)
    end
  end

  describe '#mana' do
    it 'is required' do
      god.mana = nil
      god.valid?
      expect(god.errors[:mana].size).to eq(1)
    end
  end

  describe '#mana_per_five' do
    it 'is required' do
      god.mana_per_five = nil
      god.valid?
      expect(god.errors[:mana_per_five].size).to eq(1)
    end
  end

  describe '#mana_per_level' do
    it 'is required' do
      god.mana_per_level = nil
      god.valid?
      expect(god.errors[:mana_per_level].size).to eq(1)
    end
  end

  describe '#name' do
    it 'is required' do
      god.name = nil
      god.valid?
      expect(god.errors[:name].size).to eq(1)
    end
  end

  describe '#free_rotation' do
    it 'is required' do
      god.free_rotation = nil
      god.valid?
      expect(god.errors[:free_rotation].size).to eq(1)
    end
  end

  describe '#pantheon' do
    it 'is required' do
      god.pantheon = nil
      god.valid?
      expect(god.errors[:pantheon].size).to eq(1)
    end
  end

  describe '#physical_power' do
    it 'is required' do
      god.physical_power = nil
      god.valid?
      expect(god.errors[:physical_power].size).to eq(1)
    end
  end

  describe '#physical_power_per_level' do
    it 'is required' do
      god.physical_power_per_level = nil
      god.valid?
      expect(god.errors[:physical_power_per_level].size).to eq(1)
    end
  end

  describe '#physical_protection' do
    it 'is required' do
      god.physical_protection = nil
      god.valid?
      expect(god.errors[:physical_protection].size).to eq(1)
    end
  end

  describe '#physical_protection_per_level' do
    it 'is required' do
      god.physical_protection_per_level = nil
      god.valid?
      expect(god.errors[:physical_protection_per_level].size).to eq(1)
    end
  end

  describe '#pros' do
    it 'is required' do
      god.pros = nil
      god.valid?
      expect(god.errors[:pros].size).to eq(1)
    end
  end

  describe '#roles' do
    it 'is required' do
      god.roles = nil
      god.valid?
      expect(god.errors[:roles].size).to eq(1)
    end
  end

  describe '#speed' do
    it 'is required' do
      god.speed = nil
      god.valid?
      expect(god.errors[:speed].size).to eq(1)
    end
  end

  describe '#title' do
    it 'is required' do
      god.title = nil
      god.valid?
      expect(god.errors[:title].size).to eq(1)
    end
  end

  describe '#type' do
    it 'is required' do
      god.type = nil
      god.valid?
      expect(god.errors[:type].size).to eq(1)
    end
  end

  describe '#god_card_url' do
    it 'is required' do
      god.god_card_url = nil
      god.valid?
      expect(god.errors[:god_card_url].size).to eq(1)
    end
  end

  describe '#god_icon_url' do
    it 'is required' do
      god.god_icon_url = nil
      god.valid?
      expect(god.errors[:god_icon_url].size).to eq(1)
    end
  end

  describe '#latest_god' do
    it 'is required' do
      god.latest_god = nil
      god.valid?
      expect(god.errors[:latest_god].size).to eq(1)
    end
  end
end
