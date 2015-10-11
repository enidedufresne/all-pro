class RunningBackStatsController < ApplicationController
  before_action :set_user
  before_action :authenticate_user!
  before_action :set_running_back_stat, only: [:show, :edit, :update, :destroy]

  # GET /running_back_stats
  def index
    @running_back_stats = RunningBackStat.all
  end

  # GET /running_back_stats/1
  def show
    @comments = @running_back_stat.comments
  end

  # GET /running_back_stats/new
  def new
    @running_back_stat = RunningBackStat.new
  end

  # GET /running_back_stats/1/edit
  def edit
  end

  # POST /running_back_stats
  def create
    @running_back_stat = RunningBackStat.new(running_back_stat_params)

    if @running_back_stat.save
      redirect_to @running_back_stat, notice: 'Running back stat was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /running_back_stats/1
  def update
    if @running_back_stat.update(running_back_stat_params)
      redirect_to @running_back_stat, notice: 'Running back stat was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /running_back_stats/1
  def destroy
    @running_back_stat.destroy
    redirect_to running_back_stats_url, notice: 'Running back stat was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_running_back_stat
      @running_back_stat = RunningBackStat.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def running_back_stat_params
      params.require(:running_back_stat).permit(:position_name, :shorthand, :sport_id, :position_id, :sport_name, :event, :games_played, :win, :loss, :wins, :losses, :rushing_attempts, :rushing_yards, :rushing_touchdowns, :receptions, :reception_yards, :reception_touchdowns, :fumbles, :user_id, :stat_id, :sport_id, :position_id)
    end
    
    def set_user
      @user = current_user
    end
end
