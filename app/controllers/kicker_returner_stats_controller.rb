class KickerReturnerStatsController < ApplicationController
  before_action :set_user
  before_action :authenticate_user!
  before_action :set_kicker_returner_stat, only: [:show, :edit, :update, :destroy]

  # GET /kicker_returner_stats
  def index
    @kicker_returner_stats = KickerReturnerStat.all
  end

  # GET /kicker_returner_stats/1
  def show
    @comments = @kicker_returner_stat.comments
  end

  # GET /kicker_returner_stats/new
  def new
    @kicker_returner_stat = KickerReturnerStat.new
  end

  # GET /kicker_returner_stats/1/edit
  def edit
  end

  # POST /kicker_returner_stats
  def create
    @kicker_returner_stat = KickerReturnerStat.new(kicker_returner_stat_params)

    if @kicker_returner_stat.save
      redirect_to @kicker_returner_stat, notice: 'Kicker returner stat was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /kicker_returner_stats/1
  def update
    if @kicker_returner_stat.update(kicker_returner_stat_params)
      redirect_to @kicker_returner_stat, notice: 'Kicker returner stat was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /kicker_returner_stats/1
  def destroy
    @kicker_returner_stat.destroy
    redirect_to kicker_returner_stats_url, notice: 'Kicker returner stat was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kicker_returner_stat
      @kicker_returner_stat = KickerReturnerStat.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def kicker_returner_stat_params
      params.require(:kicker_returner_stat).permit(:position_name, :shorthand, :sport_id, :position_id, :sport_name, :event, :games_played, :win, :loss, :wins, :losses, :kickreturns, :kickreturn_yards, :kickreturn_touchdowns, :user_id, :stat_id, :sport_id, :position_id)
    end
    
    def set_user
      @user = current_user
    end
end
