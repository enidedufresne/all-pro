class ThirdBasemanStatsController < ApplicationController
  before_action :set_third_baseman_stat, only: [:show, :edit, :update, :destroy]

  # GET /third_baseman_stats
  def index
    @third_baseman_stats = ThirdBasemanStat.all
  end

  # GET /third_baseman_stats/1
  def show
  end

  # GET /third_baseman_stats/new
  def new
    @third_baseman_stat = ThirdBasemanStat.new
  end

  # GET /third_baseman_stats/1/edit
  def edit
  end

  # POST /third_baseman_stats
  def create
    @third_baseman_stat = ThirdBasemanStat.new(third_baseman_stat_params)

    if @third_baseman_stat.save
      redirect_to @third_baseman_stat, notice: 'Third baseman stat was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /third_baseman_stats/1
  def update
    if @third_baseman_stat.update(third_baseman_stat_params)
      redirect_to @third_baseman_stat, notice: 'Third baseman stat was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /third_baseman_stats/1
  def destroy
    @third_baseman_stat.destroy
    redirect_to third_baseman_stats_url, notice: 'Third baseman stat was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_third_baseman_stat
      @third_baseman_stat = ThirdBasemanStat.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def third_baseman_stat_params
      params.require(:third_baseman_stat).permit(:position_name, :shorthand, :sport_id, :position_id, :sport_name, :event, :games_started, :games_played, :win, :loss, :wins, :losses, :plate_appearances, :at_bats, :hits, :runs_scored, :runs_batted_in, :walks, :strike_outs, :stolen_bases, :doubles, :triples, :home_runs, :user_id, :stat_id, :sport_id, :position_id)
    end
end
