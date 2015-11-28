# Copyright (c) 2015, @purplenutmeg1(Enide Bellamy)

class Stat < ActiveRecord::Base
  belongs_to :user
  belongs_to :sport
  belongs_to :position
end
