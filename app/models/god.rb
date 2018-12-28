class God < ApplicationRecord
  has_many :abilities

  validates :name, uniqueness: true
  validates_presence_of [
    :attack_speed,
    :attack_speed_per_level,
    :hp5_per_level,
    :health,
    :health_per_five,
    :health_per_level,
    :lore,
    :mp5_per_level,
    :magic_protection,
    :magic_protection_per_level,
    :magical_power,
    :magical_power_per_level,
    :mana,
    :mana_per_five,
    :mana_per_level,
    :name,
    :pantheon,
    :physical_power,
    :physical_power_per_level,
    :physical_protection,
    :physical_protection_per_level,
    :roles,
    :speed,
    :title,
    :god_type,
    :god_card_url,
    :god_icon_url,
    :latest_god
  ]
end
