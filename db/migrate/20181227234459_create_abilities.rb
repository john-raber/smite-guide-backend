class CreateAbilities < ActiveRecord::Migration[5.2]
  def change
    create_table :abilities do |t|
      t.belongs_to :god, foreign_key: true
      t.string :cooldown
      t.string :cost
      t.text :description
      t.string :summary
      t.jsonb :menu_items
      t.jsonb :rank_items
      t.text :secondary_description
      t.string :url

      t.timestamps
    end
  end
end
