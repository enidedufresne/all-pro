class PointGuardStatsController < ApplicationController
  before_action :set_point_guard_stat, only: [:show, :edit, :update, :destroy]

  # GET /point_guard_stats
  def index
    @point_guard_stats = PointGuardStat.all
  end

  # GET /point_guard_stats/1
  def show
  end

  # GET /point_guard_stats/new
  def new
    @point_guard_stat = PointGuardStat.new
  end

  # GET /point_guard_stats/1/edit
  def edit
  end

  # POST /point_guard_stats
  def create
    @point_guard_stat = PointGuardStat.new(point_guard_stat_params)

    if @point_guard_stat.save
      redirect_to @point_guard_stat, notice: 'Point guard stat was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /point_guard_stats/1
  def update
    if @point_guard_stat.update(point_guard_stat_params)
      redirect_to @point_guard_stat, notice: 'Point guard stat was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /point_guard_stats/1
  def destroy
    @point_guard_stat.destroy
    redirect_to point_guard_stats_url, notice: 'Point guard stat was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_point_guard_stat
      @point_guard_stat = PointGuardStat.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def point_guard_stat_params
      params.require(:point_guard_stat).permit(:position_name, :shorthand, :sport_id, :position_id, :sport_name, :event, :games_started, :games_played, :win, :loss, :wins, :losses, :minutes_played, :fieldgoals_made, :fieldgoal_attemps, :threepoints_made, :threepoint_attemps, :freethrows_made, :freethrow_attemps, :rebounds, :assists, :steals, :blocks, :points, :user_id, :stat_id, :sport_id, :position_id)
    end
end
