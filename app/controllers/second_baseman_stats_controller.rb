class SecondBasemanStatsController < ApplicationController
  before_action :set_user
  before_action :authenticate_user!
  before_action :set_second_baseman_stat, only: [:show, :edit, :update, :destroy]

  # GET /second_baseman_stats
  def index
    @second_baseman_stats = SecondBasemanStat.all
  end

  # GET /second_baseman_stats/1
  def show
  end

  # GET /second_baseman_stats/new
  def new
    @second_baseman_stat = SecondBasemanStat.new
  end

  # GET /second_baseman_stats/1/edit
  def edit
  end

  # POST /second_baseman_stats
  def create
    @second_baseman_stat = SecondBasemanStat.new(second_baseman_stat_params)

    if @second_baseman_stat.save
      redirect_to @second_baseman_stat, notice: 'Second baseman stat was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /second_baseman_stats/1
  def update
    if @second_baseman_stat.update(second_baseman_stat_params)
      redirect_to @second_baseman_stat, notice: 'Second baseman stat was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /second_baseman_stats/1
  def destroy
    @second_baseman_stat.destroy
    redirect_to second_baseman_stats_url, notice: 'Second baseman stat was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_second_baseman_stat
      @second_baseman_stat = SecondBasemanStat.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def second_baseman_stat_params
      params.require(:second_baseman_stat).permit(:position_name, :shorthand, :sport_id, :position_id, :sport_name, :event, :games_started, :games_played, :win, :loss, :wins, :losses, :plate_appearances, :at_bats, :hits, :runs_scored, :runs_batted_in, :walks, :strike_outs, :stolen_bases, :doubles, :triples, :home_runs, :user_id, :stat_id, :sport_id, :position_id)
    end
    
    def set_user
      @user = current_user
    end
end
