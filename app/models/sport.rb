# Copyright (c) 2015, @purplenutmeg1(Enide Bellamy)

class Sport < ActiveRecord::Base
  	belongs_to :user
	has_many :positions
	has_many :stats
	accepts_nested_attributes_for :positions, allow_destroy: true
end
