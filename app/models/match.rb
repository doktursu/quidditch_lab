class Match < ActiveRecord::Base
  belongs_to :team
  belongs_to :home_team
end
