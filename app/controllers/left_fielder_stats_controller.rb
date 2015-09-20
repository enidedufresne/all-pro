class LeftFielderStatsController < ApplicationController
  before_action :set_user
  before_action :authenticate_user!
  before_action :set_left_fielder_stat, only: [:show, :edit, :update, :destroy]

  # GET /left_fielder_stats
  def index
    @left_fielder_stats = LeftFielderStat.all
  end

  # GET /left_fielder_stats/1
  def show
  end

  # GET /left_fielder_stats/new
  def new
    @left_fielder_stat = LeftFielderStat.new
  end

  # GET /left_fielder_stats/1/edit
  def edit
  end

  # POST /left_fielder_stats
  def create
    @left_fielder_stat = LeftFielderStat.new(left_fielder_stat_params)

    if @left_fielder_stat.save
      redirect_to @left_fielder_stat, notice: 'Left fielder stat was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /left_fielder_stats/1
  def update
    if @left_fielder_stat.update(left_fielder_stat_params)
      redirect_to @left_fielder_stat, notice: 'Left fielder stat was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /left_fielder_stats/1
  def destroy
    @left_fielder_stat.destroy
    redirect_to left_fielder_stats_url, notice: 'Left fielder stat was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_left_fielder_stat
      @left_fielder_stat = LeftFielderStat.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def left_fielder_stat_params
      params.require(:left_fielder_stat).permit(:position_name, :shorthand, :sport_id, :position_id, :sport_name, :event, :games_started, :games_played, :win, :loss, :wins, :losses, :plate_appearances, :at_bats, :hits, :runs_scored, :runs_batted_in, :walks, :strike_outs, :stolen_bases, :doubles, :triples, :home_runs, :user_id, :stat_id, :sport_id, :position_id)
    end
    
    def set_user
      @user = current_user
    end
end
