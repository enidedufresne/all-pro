class DefenderStatsController < ApplicationController
  before_action :set_user
  before_action :authenticate_user!
  before_action :set_defender_stat, only: [:show, :edit, :update, :destroy]

  # GET /defender_stats
  def index
    @defender_stats = DefenderStat.all
  end

  # GET /defender_stats/1
  def show
  end

  # GET /defender_stats/new
  def new
    @defender_stat = DefenderStat.new
  end

  # GET /defender_stats/1/edit
  def edit
  end

  # POST /defender_stats
  def create
    @defender_stat = DefenderStat.new(defender_stat_params)

    if @defender_stat.save
      redirect_to @defender_stat, notice: 'Defender stat was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /defender_stats/1
  def update
    if @defender_stat.update(defender_stat_params)
      redirect_to @defender_stat, notice: 'Defender stat was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /defender_stats/1
  def destroy
    @defender_stat.destroy
    redirect_to defender_stats_url, notice: 'Defender stat was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_defender_stat
      @defender_stat = DefenderStat.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def defender_stat_params
      params.require(:defender_stat).permit(:position_name, :shorthand, :sport_id, :position_id, :sport_name, :event, :games_played, :win, :loss, :draw, :wins, :losses, :draws, :goals, :assists, :shots_taken, :user_id, :stat_id, :sport_id, :position_id)
    end
    
    def set_user
      @user = current_user
    end
end
