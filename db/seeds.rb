# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'digest/md5'
require 'time'
require 'rest-client'
require 'json'

SMITE_PC_URL = "http://api.smitegame.com/smiteapi.svc"

# creating session to make requests
def create_smite_api_session
  session_timestamp = Time.now.getutc.strftime("%Y%m%d%H%M%S")
  session_string = "#{ENV['SMITE_API_DEV_ID']}" + 'createsession' + "#{ENV['SMITE_API_AUTHKEY']}" + session_timestamp
  session_signature = Digest::MD5.hexdigest(session_string)

  smite_session = RestClient.get("#{SMITE_PC_URL}/createsessionJson/#{ENV['SMITE_API_DEV_ID']}/#{session_signature}/#{session_timestamp}")
  JSON.parse(smite_session)['session_id']
end

def get_smite_gods
  timestamp = Time.now.getutc.strftime("%Y%m%d%H%M%S")
  request_string = "#{ENV['SMITE_API_DEV_ID']}" + 'getgods' + "#{ENV['SMITE_API_AUTHKEY']}" + timestamp
  request_signature = Digest::MD5.hexdigest(request_string)

  smite_gods = RestClient.get("#{SMITE_PC_URL}/getgodsJson/#{ENV['SMITE_API_DEV_ID']}/#{request_signature}/#{create_smite_api_session}/#{timestamp}/1")
  JSON.parse(smite_gods)
end

gods = get_smite_gods

gods.each do |g|
  new_god = God.create!({
    attack_speed: g['AttackSpeed'],
    attack_speed_per_level: g['AttackSpeedPerLevel'],
    hp5_per_level: g['HP5PerLevel'],
    health: g['Health'],
    health_per_five: g['HealthPerFive'],
    health_per_level: g['HealthPerLevel'],
    lore: g['Lore'],
    mp5_per_level: g['MP5PerLevel'],
    magic_protection: g['MagicProtection'],
    magic_protection_per_level: g['MagicProtectionPerLevel'],
    magical_power: g['MagicalPower'],
    magical_power_per_level: g['MagicalPowerPerLevel'],
    mana: g['Mana'],
    mana_per_five: g['ManaPerFive'],
    mana_per_level: g['ManaPerLevel'],
    name: g['Name'],
    free_rotation: g['OnFreeRotation'],
    pantheon: g['Pantheon'],
    physical_power: g['PhysicalPower'],
    physical_power_per_level: g['PhysicalPowerPerLevel'],
    physical_protection: g['PhysicalProtection'],
    physical_protection_per_level: g['PhysicalProtectionPerLevel'],
    pros: g['Pros'],
    roles: g['Roles'],
    speed: g['Speed'],
    title: g['Title'],
    god_type: g['Type'],
    god_card_url: g['godCard_URL'],
    god_icon_url: g['godIcon_URL'],
    latest_god: g['latestGod']
  })

  Ability.create!([
    {
      god: new_god,
      tier: 'ability_1',
      cooldown: g['Ability_1']['Description']['itemDescription']['cooldown'],
      cost: g['Ability_1']['Description']['itemDescription']['cost'],
      description: g['Ability_1']['Description']['itemDescription']['description'],
      summary: g['Ability_1']['Summary'],
      menu_items: g['Ability_1']['Description']['itemDescription']['menuitems'],
      rank_items: g['Ability_1']['Description']['itemDescription']['rankitems'],
      url: g['Ability_1']['URL']
    },
    {
      god: new_god,
      tier: 'ability_2',
      cooldown: g['Ability_2']['Description']['itemDescription']['cooldown'],
      cost: g['Ability_2']['Description']['itemDescription']['cost'],
      description: g['Ability_2']['Description']['itemDescription']['description'],
      summary: g['Ability_2']['Summary'],
      menu_items: g['Ability_2']['Description']['itemDescription']['menuitems'],
      rank_items: g['Ability_2']['Description']['itemDescription']['rankitems'],
      url: g['Ability_2']['URL']
    },
    {
      god: new_god,
      tier: 'ability_3',
      cooldown: g['Ability_3']['Description']['itemDescription']['cooldown'],
      cost: g['Ability_3']['Description']['itemDescription']['cost'],
      description: g['Ability_3']['Description']['itemDescription']['description'],
      summary: g['Ability_3']['Summary'],
      menu_items: g['Ability_3']['Description']['itemDescription']['menuitems'],
      rank_items: g['Ability_3']['Description']['itemDescription']['rankitems'],
      url: g['Ability_3']['URL']
    },
    {
      god: new_god,
      tier: 'ability_4',
      cooldown: g['Ability_4']['Description']['itemDescription']['cooldown'],
      cost: g['Ability_4']['Description']['itemDescription']['cost'],
      description: g['Ability_4']['Description']['itemDescription']['description'],
      summary: g['Ability_4']['Summary'],
      menu_items: g['Ability_4']['Description']['itemDescription']['menuitems'],
      rank_items: g['Ability_4']['Description']['itemDescription']['rankitems'],
      url: g['Ability_4']['URL']
    },
    {
      god: new_god,
      tier: 'ability_5',
      cooldown: g['Ability_5']['Description']['itemDescription']['cooldown'],
      cost: g['Ability_5']['Description']['itemDescription']['cost'],
      description: g['Ability_5']['Description']['itemDescription']['description'],
      summary: g['Ability_5']['Summary'],
      menu_items: g['Ability_5']['Description']['itemDescription']['menuitems'],
      rank_items: g['Ability_5']['Description']['itemDescription']['rankitems'],
      url: g['Ability_5']['URL']
    },
    {
      god: new_god,
      tier: 'basic_attack',
      menu_items: g['basicAttack']['itemDescription']['menuitems'],
    }
  ])
end
