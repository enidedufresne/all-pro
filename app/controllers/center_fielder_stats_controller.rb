class CenterFielderStatsController < ApplicationController
  before_action :set_user
  before_action :authenticate_user!
  before_action :set_center_fielder_stat, only: [:show, :edit, :update, :destroy]

  # GET /center_fielder_stats
  def index
    @center_fielder_stats = CenterFielderStat.all
  end

  # GET /center_fielder_stats/1
  def show
    @comments = @center_fielder_stat.comments
  end

  # GET /center_fielder_stats/new
  def new
    @center_fielder_stat = CenterFielderStat.new
  end

  # GET /center_fielder_stats/1/edit
  def edit
  end

  # POST /center_fielder_stats
  def create
    @center_fielder_stat = current_user.center_fielder_stats.new(center_fielder_stat_params)

    if @center_fielder_stat.save
      # redirect_to @center_fielder_stat, notice: 'center stat was successfully created.'
      redirect_to root_path
    else
      # render :new
       render 'new', notice: @center_fielder_stat.errors.full_messages.first
    end
  end

  # PATCH/PUT /center_fielder_stats/1
  def update
    if @center_fielder_stat.update(center_fielder_stat_params)
      redirect_to @center_fielder_stat, notice: 'Center fielder stat was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /center_fielder_stats/1
  def destroy
    @center_fielder_stat.destroy
    redirect_to center_fielder_stats_url, notice: 'Center fielder stat was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_center_fielder_stat
      @center_fielder_stat = CenterFielderStat.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def center_fielder_stat_params
      params.require(:center_fielder_stat).permit(:position_name, :shorthand, :sport_id, :position_id, :sport_name, :event, :games_started, :games_played, :win, :loss, :wins, :losses, :plate_appearances, :at_bats, :hits, :runs_scored, :runs_batted_in, :walks, :strike_outs, :stolen_bases, :doubles, :triples, :home_runs, :score, :opponent_score, :user_id, :stat_id, :sport_id, :position_id)
    end
    
    def set_user
      @user = current_user
    end
end
