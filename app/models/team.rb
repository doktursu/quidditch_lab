class Team < ActiveRecord::Base
  has_many :players
  has_many :matches
  has_one :home_team
  has_and_belongs_to_many :competitions
end
