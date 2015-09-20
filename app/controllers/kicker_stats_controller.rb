class KickerStatsController < ApplicationController
  before_action :set_kicker_stat, only: [:show, :edit, :update, :destroy]

  # GET /kicker_stats
  def index
    @kicker_stats = KickerStat.all
  end

  # GET /kicker_stats/1
  def show
  end

  # GET /kicker_stats/new
  def new
    @kicker_stat = KickerStat.new
  end

  # GET /kicker_stats/1/edit
  def edit
  end

  # POST /kicker_stats
  def create
    @kicker_stat = KickerStat.new(kicker_stat_params)

    if @kicker_stat.save
      redirect_to @kicker_stat, notice: 'Kicker stat was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /kicker_stats/1
  def update
    if @kicker_stat.update(kicker_stat_params)
      redirect_to @kicker_stat, notice: 'Kicker stat was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /kicker_stats/1
  def destroy
    @kicker_stat.destroy
    redirect_to kicker_stats_url, notice: 'Kicker stat was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kicker_stat
      @kicker_stat = KickerStat.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def kicker_stat_params
      params.require(:kicker_stat).permit(:position_name, :shorthand, :sport_id, :position_id, :sport_name, :event, :games_played, :win, :loss, :wins, :losses, :field_goals, :user_id, :stat_id, :sport_id, :position_id)
    end
end
