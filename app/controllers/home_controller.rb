# Copyright (c) 2015, @sudharti(Sudharsanan Muralidharan)
# Socify is an Open source Social network written in Ruby on Rails This file is licensed
# under GNU GPL v2 or later. See the LICENSE.

class HomeController < ApplicationController
  before_action :set_user, except: :front
  respond_to :html, :js

  def index
    @post = Post.new
    @friends = @user.all_following.unshift(@user)
    @activities = PublicActivity::Activity.where(owner_id: @friends).order(created_at: :desc).paginate(page: params[:page], per_page: 10)

    # @starting_pitcher_stat = current_user.starting_pitcher_stats
    

    @catcher_stats = CatcherStat.all
    @center_fielder_stats = CenterFielderStat.all
    @center_stats = CenterStat.all
    @defender_stats = DefenderStat.all
    @defensive_back_stats = DefensiveBackStat.all
    @defensive_end_stats = DefensiveEndStat.all
    @defensive_tackle_stats = DefensiveTackleStat.all
    @designated_hitter_stats = DesignatedHitterStat.all
    @first_baseman_stats = FirstBasemanStat.all
    @forward_stats = ForwardStat.all
    @goalkeeper_stats = GoalkeeperStat.all
    @kicker_stats = KickerStat.all
    @kicker_returner_stats = KickerReturnerStat.all
    @left_fielder_stats = LeftFielderStat.all
    @line_backer_stats = LineBackerStat.all
    @midfielder_stats = MidfielderStat.all
    @offensive_lineman_stats = OffensiveLinemanStat.all
    @point_guard_stats = PointGuardStat.all
    @power_forward_stats = PowerForwardStat.all
    @quarterback_stats = QuarterbackStat.all
    @relief_pitcher_stats = ReliefPitcherStat.all
    @right_fielder_stats = RightFielderStat.all
    @runner_stats = RunnerStat.all
    @running_back_stats = RunningBackStat.all
    @second_baseman_stats = SecondBasemanStat.all
    @shooting_guard_stats = ShootingGuardStat.all
    @shortstop_stats = ShortstopStat.all
    @small_forward_stats = SmallForwardStat.all
    @sprinter_stats = SprinterStat.all
    @starting_pitcher_stats = StartingPitcherStat.all
    @third_baseman_stats = ThirdBasemanStat.all
    @tight_end_stats = TightEndStat.all
    @wide_receiver_stats = WideReceiverStat.all
  end

  def front
    @activities = PublicActivity::Activity.order(created_at: :desc).paginate(page: params[:page], per_page: 10)

    @catcher_stats = CatcherStat.all
    @center_fielder_stats = CenterFielderStat.all
    @center_stats = CenterStat.all
    @defender_stats = DefenderStat.all
    @defensive_back_stats = DefensiveBackStat.all
    @defensive_end_stats = DefensiveEndStat.all
    @defensive_tackle_stats = DefensiveTackleStat.all
    @designated_hitter_stats = DesignatedHitterStat.all
    @first_baseman_stats = FirstBasemanStat.all
    @forward_stats = ForwardStat.all
    @goalkeeper_stats = GoalkeeperStat.all
    @kicker_stats = KickerStat.all
    @kicker_returner_stats = KickerReturnerStat.all
    @left_fielder_stats = LeftFielderStat.all
    @line_backer_stats = LineBackerStat.all
    @midfielder_stats = MidfielderStat.all
    @offensive_lineman_stats = OffensiveLinemanStat.all
    @point_guard_stats = PointGuardStat.all
    @power_forward_stats = PowerForwardStat.all
    @quarterback_stats = QuarterbackStat.all
    @relief_pitcher_stats = ReliefPitcherStat.all
    @right_fielder_stats = RightFielderStat.all
    @runner_stats = RunnerStat.all
    @running_back_stats = RunningBackStat.all
    @second_baseman_stats = SecondBasemanStat.all
    @shooting_guard_stats = ShootingGuardStat.all
    @shortstop_stats = ShortstopStat.all
    @small_forward_stats = SmallForwardStat.all
    @sprinter_stats = SprinterStat.all
    @starting_pitcher_stats = StartingPitcherStat.all
    @third_baseman_stats = ThirdBasemanStat.all
    @tight_end_stats = TightEndStat.all
    @wide_receiver_stats = WideReceiverStat.all
  end

  def find_friends
    @friends = @user.all_following
    @users =  User.where.not(id: @friends.unshift(@user)).paginate(page: params[:page])
  end

  private
  def set_user
    @user = current_user
  end
end
