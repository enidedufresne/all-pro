class ShootingGuardStatsController < ApplicationController
  before_action :set_user
  before_action :authenticate_user!
  before_action :set_shooting_guard_stat, only: [:show, :edit, :update, :destroy]

  # GET /shooting_guard_stats
  def index
    @shooting_guard_stats = ShootingGuardStat.all
  end

  # GET /shooting_guard_stats/1
  def show
    @comments = @shooting_guard_stat.comments
  end

  # GET /shooting_guard_stats/new
  def new
    @shooting_guard_stat = ShootingGuardStat.new
  end

  # GET /shooting_guard_stats/1/edit
  def edit
  end

  # POST /shooting_guard_stats
  def create
    @shooting_guard_stat = current_user.shooting_guard_stats.new(shooting_guard_stat_params)

    if @shooting_guard_stat.save
      # redirect_to @shooting_guard_stat, notice: 'shooting_guard stat was successfully created.'
      redirect_to root_path
    else
      # render :new
       render 'new', notice: @shooting_guard_stat.errors.full_messages.first
    end
  end

  # PATCH/PUT /shooting_guard_stats/1
  def update
    if @shooting_guard_stat.update(shooting_guard_stat_params)
      redirect_to @shooting_guard_stat, notice: 'Shooting guard stat was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /shooting_guard_stats/1
  def destroy
    @shooting_guard_stat.destroy
    redirect_to shooting_guard_stats_url, notice: 'Shooting guard stat was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shooting_guard_stat
      @shooting_guard_stat = ShootingGuardStat.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def shooting_guard_stat_params
      params.require(:shooting_guard_stat).permit(:position_name, :shorthand, :sport_id, :position_id, :sport_name, :event, :games_started, :games_played, :win, :loss, :wins, :losses, :minutes_played, :fieldgoals_made, :fieldgoal_attemps, :threepoints_made, :threepoint_attemps, :freethrows_made, :freethrow_attemps, :rebounds, :assists, :steals, :blocks, :points, :user_id, :stat_id, :sport_id, :position_id)
    end
    
    def set_user
      @user = current_user
    end
end
