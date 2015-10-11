class CenterStatsController < ApplicationController
  before_action :set_user
  before_action :authenticate_user!
  before_action :set_center_stat, only: [:show, :edit, :update, :destroy]

  # GET /center_stats
  def index
    @center_stats = CenterStat.all
  end

  # GET /center_stats/1
  def show
    @comments = @center_stat.comments
  end

  # GET /center_stats/new
  def new
    @center_stat = CenterStat.new
  end

  # GET /center_stats/1/edit
  def edit
  end

  # POST /center_stats
  def create
    @center_stat = CenterStat.new(center_stat_params)

    if @center_stat.save
      redirect_to @center_stat, notice: 'Center stat was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /center_stats/1
  def update
    if @center_stat.update(center_stat_params)
      redirect_to @center_stat, notice: 'Center stat was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /center_stats/1
  def destroy
    @center_stat.destroy
    redirect_to center_stats_url, notice: 'Center stat was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_center_stat
      @center_stat = CenterStat.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def center_stat_params
      params.require(:center_stat).permit(:position_name, :shorthand, :sport_id, :position_id, :sport_name, :event, :games_started, :games_played, :win, :loss, :wins, :losses, :minutes_played, :fieldgoals_made, :fieldgoal_attemps, :threepoints_made, :threepoint_attemps, :freethrows_made, :freethrow_attemps, :rebounds, :assists, :steals, :blocks, :points, :user_id, :stat_id, :sport_id, :position_id)
    end
    
    def set_user
      @user = current_user
    end
end
