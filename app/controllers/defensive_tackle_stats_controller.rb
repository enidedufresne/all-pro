class DefensiveTackleStatsController < ApplicationController
  before_action :set_user
  before_action :authenticate_user!
  before_action :set_defensive_tackle_stat, only: [:show, :edit, :update, :destroy]

  # GET /defensive_tackle_stats
  def index
    @defensive_tackle_stats = DefensiveTackleStat.all
  end

  # GET /defensive_tackle_stats/1
  def show
    @comments = @defensive_tackle_stat.comments
  end

  # GET /defensive_tackle_stats/new
  def new
    @defensive_tackle_stat = DefensiveTackleStat.new
  end

  # GET /defensive_tackle_stats/1/edit
  def edit
  end

  # POST /defensive_tackle_stats
  def create
    @defensive_tackle_stat = DefensiveTackleStat.new(defensive_tackle_stat_params)

    if @defensive_tackle_stat.save
      redirect_to @defensive_tackle_stat, notice: 'Defensive tackle stat was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /defensive_tackle_stats/1
  def update
    if @defensive_tackle_stat.update(defensive_tackle_stat_params)
      redirect_to @defensive_tackle_stat, notice: 'Defensive tackle stat was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /defensive_tackle_stats/1
  def destroy
    @defensive_tackle_stat.destroy
    redirect_to defensive_tackle_stats_url, notice: 'Defensive tackle stat was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_defensive_tackle_stat
      @defensive_tackle_stat = DefensiveTackleStat.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def defensive_tackle_stat_params
      params.require(:defensive_tackle_stat).permit(:position_name, :shorthand, :sport_id, :position_id, :sport_name, :event, :win, :loss, :wins, :losses, :tackles, :sacks, :fumbles, :interception, :user_id, :stat_id, :sport_id, :position_id)
    end
    
    def set_user
      @user = current_user
    end
end
