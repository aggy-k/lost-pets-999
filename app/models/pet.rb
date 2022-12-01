class Pet < ApplicationRecord
  SPECIES = %w[dog cat bunny]

  validates :address, :last_seen_at, :species, presence: true
end
