class SprinterStatsController < ApplicationController
  before_action :set_sprinter_stat, only: [:show, :edit, :update, :destroy]

  # GET /sprinter_stats
  def index
    @sprinter_stats = SprinterStat.all
  end

  # GET /sprinter_stats/1
  def show
  end

  # GET /sprinter_stats/new
  def new
    @sprinter_stat = SprinterStat.new
  end

  # GET /sprinter_stats/1/edit
  def edit
  end

  # POST /sprinter_stats
  def create
    @sprinter_stat = SprinterStat.new(sprinter_stat_params)

    if @sprinter_stat.save
      redirect_to @sprinter_stat, notice: 'Sprinter stat was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /sprinter_stats/1
  def update
    if @sprinter_stat.update(sprinter_stat_params)
      redirect_to @sprinter_stat, notice: 'Sprinter stat was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /sprinter_stats/1
  def destroy
    @sprinter_stat.destroy
    redirect_to sprinter_stats_url, notice: 'Sprinter stat was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sprinter_stat
      @sprinter_stat = SprinterStat.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def sprinter_stat_params
      params.require(:sprinter_stat).permit(:position_name, :shorthand, :sport_id, :position_id, :sport_name, :event, :races_run, :other_events, :win, :loss, :wins, :losses, :team_score, :distance_time, :placed, :speed, :user_id, :stat_id, :sport_id, :position_id)
    end
end