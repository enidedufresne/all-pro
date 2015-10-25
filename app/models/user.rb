# Copyright (c) 2015, @sudharti(Sudharsanan Muralidharan)
# Socify is an Open source Social network written in Ruby on Rails This file is licensed
# under GNU GPL v2 or later. See the LICENSE.

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
    :recoverable, :rememberable, :trackable, :validatable
  acts_as_voter
  acts_as_follower
  acts_as_followable

  ROLES = %w[athlete coach scout]

  has_many :posts
  has_many :comments
  has_many :events
  has_many :catcher_stats
  has_many :center_fielder_stats
  has_many :center_stats
  has_many :defender_stats
  has_many :defensive_back_stats
  has_many :defensive_end_stats
  has_many :defensive_tackle_stats
  has_many :designated_hitter_stats
  has_many :first_baseman_stats
  has_many :forward_stats
  has_many :goalkeeper_stats
  has_many :kicker_returner_stats
  has_many :kicker_stats
  has_many :left_fielder_stats
  has_many :line_backer_stats
  has_many :midfielder_stats
  has_many :offensive_lineman_stats
  has_many :point_guard_stats
  has_many :power_forward_stats
  has_many :quarterback_stats
  has_many :reliev_pitcher_stats
  has_many :right_fielder_stats
  has_many :runner_stats
  has_many :running_back_stats
  has_many :second_baseman_stats
  has_many :shooting_guard_stats
  has_many :shortstop_stats
  has_many :small_forward_stats
  has_many :sprinter_stats
  has_many :starting_pitcher_stats
  has_many :third_baseman_stats
  has_many :tight_end_stats
  has_many :wide_reciever_stats

  mount_uploader :avatar, AvatarUploader
  mount_uploader :cover, AvatarUploader

  validates_presence_of :name

  self.per_page = 10

  extend FriendlyId
  friendly_id :name, use: [:slugged, :finders]
end
