class Position < ActiveRecord::Base
  belongs_to :user
  belongs_to :sport
  has_many :stats
  accepts_nested_attributes_for :stats, allow_destroy: true
end
