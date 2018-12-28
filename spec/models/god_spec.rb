require 'rails_helper'

describe God do
  let(:god) { FactoryBot.create(:god) }
  let(:ability1) { FactoryBot.create(:ability, god: god, tier: 'ability_1') }
  let(:ability2) { FactoryBot.create(:ability, god: god, tier: 'ability_2') }
  let(:ability3) { FactoryBot.create(:ability, god: god, tier: 'ability_3') }
  let(:ability4) { FactoryBot.create(:ability, god: god, tier: 'ability_4') }
  let(:ability5) { FactoryBot.create(:ability, god: god, tier: 'ability_5') }
  let(:basic) { FactoryBot.create(:ability, god: god, tier: 'basic_attack') }

  it 'is an instance of God' do
    expect(subject).to be_an God
  end

  it 'is not persisted' do
    expect(subject).to_not be_persisted
  end

  it 'is valid with valid attributes' do
    expect(god).to be_valid
  end

  describe '#ability_1' do
    it "returns the god's first ability" do
      first_ability = ability1
      expect(god.ability_1).to eq(first_ability)
    end
  end

  describe '#ability_2' do
    it "returns the god's second ability" do
      second_ability = ability2
      expect(god.ability_2).to eq(second_ability)
    end
  end

  describe '#ability_3' do
    it "returns the god's third ability" do
      third_ability = ability3
      expect(god.ability_3).to eq(third_ability)
    end
  end

  describe '#ability_4' do
    it "returns the god's fourth ability" do
      fourth_ability = ability4
      expect(god.ability_4).to eq(fourth_ability)
    end
  end

  describe '#ability_5' do
    it "returns the god's passive ability" do
      passive_ability = ability5
      expect(god.ability_5).to eq(passive_ability)
    end
  end

  describe '#basic_attack' do
    it "returns the god's basic attack" do
      basic_ability = basic
      expect(god.basic_attack).to eq(basic_ability)
    end
  end

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

    it 'is unique' do
      another_god = FactoryBot.build(:god, name: god.name)
      another_god.valid?
      expect(another_god.errors[:name].size).to eq(1)
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

  describe '#god_type' do
    it 'is required' do
      god.god_type = nil
      god.valid?
      expect(god.errors[:god_type].size).to eq(1)
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
