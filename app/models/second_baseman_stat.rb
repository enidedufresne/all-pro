class SecondBasemanStat < ActiveRecord::Base
  include Shared::Callbacks
  belongs_to :user
  belongs_to :stat
  belongs_to :sport
  belongs_to :position

  acts_as_votable
  acts_as_commentable

  include PublicActivity::Model
  tracked only: [:create], owner: Proc.new{ |controller, model| model.user }

  validates_presence_of :event, :score, :opponent_score
end
