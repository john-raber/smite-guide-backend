class Ability < ApplicationRecord
  belongs_to :god

  validates_presence_of [
    :tier,
    :menu_items
  ]
  validates :tier, uniqueness: { scope: :god }
end
