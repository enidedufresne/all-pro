class KickerStat < ActiveRecord::Base
  belongs_to :user
  belongs_to :stat
  belongs_to :sport
  belongs_to :position
end
