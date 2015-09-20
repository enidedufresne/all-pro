class DefensiveEndStatsController < ApplicationController
  before_action :set_user
  before_action :authenticate_user!
  before_action :set_defensive_end_stat, only: [:show, :edit, :update, :destroy]

  # GET /defensive_end_stats
  def index
    @defensive_end_stats = DefensiveEndStat.all
  end

  # GET /defensive_end_stats/1
  def show
  end

  # GET /defensive_end_stats/new
  def new
    @defensive_end_stat = DefensiveEndStat.new
  end

  # GET /defensive_end_stats/1/edit
  def edit
  end

  # POST /defensive_end_stats
  def create
    @defensive_end_stat = DefensiveEndStat.new(defensive_end_stat_params)

    if @defensive_end_stat.save
      redirect_to @defensive_end_stat, notice: 'Defensive end stat was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /defensive_end_stats/1
  def update
    if @defensive_end_stat.update(defensive_end_stat_params)
      redirect_to @defensive_end_stat, notice: 'Defensive end stat was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /defensive_end_stats/1
  def destroy
    @defensive_end_stat.destroy
    redirect_to defensive_end_stats_url, notice: 'Defensive end stat was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_defensive_end_stat
      @defensive_end_stat = DefensiveEndStat.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def defensive_end_stat_params
      params.require(:defensive_end_stat).permit(:position_name, :shorthand, :sport_id, :position_id, :sport_name, :event, :win, :loss, :wins, :losses, :tackles, :sacks, :fumbles, :interception, :user_id, :stat_id, :sport_id, :position_id)
    end
    
    def set_user
      @user = current_user
    end
end
