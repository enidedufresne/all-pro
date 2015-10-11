class PowerForwardStatsController < ApplicationController
  before_action :set_user
  before_action :authenticate_user!
  before_action :set_power_forward_stat, only: [:show, :edit, :update, :destroy]

  # GET /power_forward_stats
  def index
    @power_forward_stats = PowerForwardStat.all
  end

  # GET /power_forward_stats/1
  def show
    @comments = @power_forward_stat.comments
  end

  # GET /power_forward_stats/new
  def new
    @power_forward_stat = PowerForwardStat.new
  end

  # GET /power_forward_stats/1/edit
  def edit
  end

  # POST /power_forward_stats
  def create
    @power_forward_stat = PowerForwardStat.new(power_forward_stat_params)

    if @power_forward_stat.save
      redirect_to @power_forward_stat, notice: 'Power forward stat was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /power_forward_stats/1
  def update
    if @power_forward_stat.update(power_forward_stat_params)
      redirect_to @power_forward_stat, notice: 'Power forward stat was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /power_forward_stats/1
  def destroy
    @power_forward_stat.destroy
    redirect_to power_forward_stats_url, notice: 'Power forward stat was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_power_forward_stat
      @power_forward_stat = PowerForwardStat.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def power_forward_stat_params
      params.require(:power_forward_stat).permit(:position_name, :shorthand, :sport_id, :position_id, :sport_name, :event, :games_started, :games_played, :win, :loss, :wins, :losses, :minutes_played, :fieldgoals_made, :fieldgoal_attemps, :threepoints_made, :threepoint_attemps, :freethrows_made, :freethrow_attemps, :rebounds, :assists, :steals, :blocks, :points, :user_id, :stat_id, :sport_id, :position_id)
    end
    
    def set_user
      @user = current_user
    end
end
