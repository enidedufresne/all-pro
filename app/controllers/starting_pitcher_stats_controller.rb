class StartingPitcherStatsController < ApplicationController
  before_action :set_user
  before_action :authenticate_user!
  before_action :set_starting_pitcher_stat, only: [:show, :edit, :update, :destroy]

  # GET /starting_pitcher_stats
  def index
    @starting_pitcher_stats = StartingPitcherStat.all
  end

  # GET /starting_pitcher_stats/1
  def show
    @comments = @starting_pitcher_stat.comments
  end

  # GET /starting_pitcher_stats/new
  def new
    @starting_pitcher_stat = StartingPitcherStat.new
  end

  # GET /starting_pitcher_stats/1/edit
  def edit
  end

  # POST /starting_pitcher_stats
  def create
    @starting_pitcher_stat = StartingPitcherStat.new(starting_pitcher_stat_params)

    if @starting_pitcher_stat.save
      redirect_to @starting_pitcher_stat, notice: 'Starting pitcher stat was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /starting_pitcher_stats/1
  def update
    if @starting_pitcher_stat.update(starting_pitcher_stat_params)
      redirect_to @starting_pitcher_stat, notice: 'Starting pitcher stat was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /starting_pitcher_stats/1
  def destroy
    @starting_pitcher_stat.destroy
    redirect_to starting_pitcher_stats_url, notice: 'Starting pitcher stat was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_starting_pitcher_stat
      @starting_pitcher_stat = StartingPitcherStat.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def starting_pitcher_stat_params
      params.require(:starting_pitcher_stat).permit(:position_name, :shorthand, :sport_id, :position_id, :sport_name, :event, :games_started, :games_played, :win, :loss, :wins, :losses, :pitcher_win, :pitcher_loss, :pitcher_wins, :pitcher_losses, :pitcher_no_decision, :pitcher_no_decisions, :pitcher_saves, :innings_pitched, :hits_allowed, :runs_allowed, :strikeouts, :walks_allowed, :user_id, :stat_id, :sport_id, :position_id)
    end
    
    def set_user
      @user = current_user
    end
end
