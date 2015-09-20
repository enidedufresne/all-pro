class FirstBasemanStatsController < ApplicationController
  before_action :set_first_baseman_stat, only: [:show, :edit, :update, :destroy]

  # GET /first_baseman_stats
  def index
    @first_baseman_stats = FirstBasemanStat.all
  end

  # GET /first_baseman_stats/1
  def show
  end

  # GET /first_baseman_stats/new
  def new
    @first_baseman_stat = FirstBasemanStat.new
  end

  # GET /first_baseman_stats/1/edit
  def edit
  end

  # POST /first_baseman_stats
  def create
    @first_baseman_stat = FirstBasemanStat.new(first_baseman_stat_params)

    if @first_baseman_stat.save
      redirect_to @first_baseman_stat, notice: 'First baseman stat was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /first_baseman_stats/1
  def update
    if @first_baseman_stat.update(first_baseman_stat_params)
      redirect_to @first_baseman_stat, notice: 'First baseman stat was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /first_baseman_stats/1
  def destroy
    @first_baseman_stat.destroy
    redirect_to first_baseman_stats_url, notice: 'First baseman stat was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_first_baseman_stat
      @first_baseman_stat = FirstBasemanStat.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def first_baseman_stat_params
      params.require(:first_baseman_stat).permit(:position_name, :shorthand, :sport_id, :position_id, :sport_name, :event, :games_started, :games_played, :win, :loss, :wins, :losses, :plate_appearances, :at_bats, :hits, :runs_scored, :runs_batted_in, :walks, :strike_outs, :stolen_bases, :doubles, :triples, :home_runs, :user_id, :stat_id, :sport_id, :position_id)
    end
end
