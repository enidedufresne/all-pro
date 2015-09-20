class RightFielderStatsController < ApplicationController
  before_action :set_user
  before_action :authenticate_user!
  before_action :set_right_fielder_stat, only: [:show, :edit, :update, :destroy]

  # GET /right_fielder_stats
  def index
    @right_fielder_stats = RightFielderStat.all
  end

  # GET /right_fielder_stats/1
  def show
  end

  # GET /right_fielder_stats/new
  def new
    @right_fielder_stat = RightFielderStat.new
  end

  # GET /right_fielder_stats/1/edit
  def edit
  end

  # POST /right_fielder_stats
  def create
    @right_fielder_stat = RightFielderStat.new(right_fielder_stat_params)

    if @right_fielder_stat.save
      redirect_to @right_fielder_stat, notice: 'Right fielder stat was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /right_fielder_stats/1
  def update
    if @right_fielder_stat.update(right_fielder_stat_params)
      redirect_to @right_fielder_stat, notice: 'Right fielder stat was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /right_fielder_stats/1
  def destroy
    @right_fielder_stat.destroy
    redirect_to right_fielder_stats_url, notice: 'Right fielder stat was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_right_fielder_stat
      @right_fielder_stat = RightFielderStat.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def right_fielder_stat_params
      params.require(:right_fielder_stat).permit(:position_name, :shorthand, :sport_id, :position_id, :sport_name, :event, :games_started, :games_played, :win, :loss, :wins, :losses, :plate_appearances, :at_bats, :hits, :runs_scored, :runs_batted_in, :walks, :strike_outs, :stolen_bases, :doubles, :triples, :home_runs, :user_id, :stat_id, :sport_id, :position_id)
    end
    
    def set_user
      @user = current_user
    end
end
