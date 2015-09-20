class ReliefPitcherStatsController < ApplicationController
  before_action :set_user
  before_action :authenticate_user!
  before_action :set_relief_pitcher_stat, only: [:show, :edit, :update, :destroy]

  # GET /relief_pitcher_stats
  def index
    @relief_pitcher_stats = ReliefPitcherStat.all
  end

  # GET /relief_pitcher_stats/1
  def show
  end

  # GET /relief_pitcher_stats/new
  def new
    @relief_pitcher_stat = ReliefPitcherStat.new
  end

  # GET /relief_pitcher_stats/1/edit
  def edit
  end

  # POST /relief_pitcher_stats
  def create
    @relief_pitcher_stat = ReliefPitcherStat.new(relief_pitcher_stat_params)

    if @relief_pitcher_stat.save
      redirect_to @relief_pitcher_stat, notice: 'Relief pitcher stat was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /relief_pitcher_stats/1
  def update
    if @relief_pitcher_stat.update(relief_pitcher_stat_params)
      redirect_to @relief_pitcher_stat, notice: 'Relief pitcher stat was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /relief_pitcher_stats/1
  def destroy
    @relief_pitcher_stat.destroy
    redirect_to relief_pitcher_stats_url, notice: 'Relief pitcher stat was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_relief_pitcher_stat
      @relief_pitcher_stat = ReliefPitcherStat.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def relief_pitcher_stat_params
      params.require(:relief_pitcher_stat).permit(:position_name, :shorthand, :sport_id, :position_id, :sport_name, :event, :games_started, :games_played, :win, :loss, :wins, :losses, :pitcher_win, :pitcher_loss, :pitcher_wins, :pitcher_losses, :pitcher_no_decision, :pitcher_no_decisions, :pitcher_saves, :innings_pitched, :hits_allowed, :runs_allowed, :strikeouts, :walks_allowed, :user_id, :stat_id, :sport_id, :position_id)
    end
    
    def set_user
      @user = current_user
    end
end
