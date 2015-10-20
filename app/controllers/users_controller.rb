# Copyright (c) 2015, @sudharti(Sudharsanan Muralidharan)
# Socify is an Open source Social network written in Ruby on Rails This file is licensed
# under GNU GPL v2 or later. See the LICENSE.

class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user
  before_action :check_ownership, only: [:edit, :update]
  respond_to :html, :js
  # load_and_authorize_resource :starting_pitcher_stat

  def show
    @activities = PublicActivity::Activity.where(owner: @user).order(created_at: :desc).paginate(page: params[:page], per_page: 10)

    # @starting_pitcher_stat = current_user.starting_pitcher_stat

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

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  def deactivate
  end

  def friends
    @friends = @user.following_users.paginate(page: params[:page])
  end

  def followers
    @followers = @user.user_followers.paginate(page: params[:page])
  end

  private
  def user_params
    params.require(:user).permit(:name, :about, :avatar, :cover,
                                 :sex, :dob, :location, :phone_number)
  end

  def check_ownership
    redirect_to current_user, notice: 'Not Authorized' unless @user == current_user
  end

  def set_user
    @user = User.find(params[:id])
  end
end
