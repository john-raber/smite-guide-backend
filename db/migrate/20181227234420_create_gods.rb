class CreateGods < ActiveRecord::Migration[5.2]
  def change
    create_table :gods do |t|
      t.belongs_to :pantheon, foreign_key: true
      t.decimal :attack_speed
      t.decimal :attack_speed_per_level
      t.string :cons
      t.decimal :hp5_per_level
      t.integer :health
      t.integer :health_per_five
      t.integer :health_per_level
      t.text :lore
      t.decimal :mp5_per_level
      t.integer :magic_protection
      t.decimal :magic_protection_per_level
      t.integer :magical_power
      t.decimal :magical_power_per_level
      t.integer :mana
      t.decimal :mana_per_five
      t.integer :mana_per_level
      t.string :name
      t.string :free_rotation
      t.integer :physical_power
      t.decimal :physical_power_per_level
      t.integer :physical_protection
      t.decimal :physical_protection_per_level
      t.string :pros
      t.string :roles
      t.integer :speed
      t.string :title
      t.string :type
      t.string :god_card_url
      t.string :god_icon_url
      t.string :latest_god

      t.timestamps
    end
  end
end
