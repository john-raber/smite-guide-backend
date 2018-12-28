class Ability < ApplicationRecord
  belongs_to :god

  validates_presence_of [
    :tier,
    :description,
    :summary,
    :menu_items,
    :rank_items,
    :url
  ]
  validates_uniqueness_of [:description, :summary]
end
