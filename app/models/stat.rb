class Stat < ActiveRecord::Base
  belongs_to :user
  belongs_to :sport
  belongs_to :position
end
