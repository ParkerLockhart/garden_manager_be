class Plant < ApplicationRecord
  validates :name, :frost_date, :maturity
end
