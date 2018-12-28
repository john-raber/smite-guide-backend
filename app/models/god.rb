class God < ApplicationRecord
  belongs_to :pantheon
  has_many :abilities
end
