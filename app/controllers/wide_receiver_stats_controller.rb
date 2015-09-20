class WideReceiverStatsController < ApplicationController
  before_action :set_wide_receiver_stat, only: [:show, :edit, :update, :destroy]

  # GET /wide_receiver_stats
  def index
    @wide_receiver_stats = WideReceiverStat.all
  end

  # GET /wide_receiver_stats/1
  def show
  end

  # GET /wide_receiver_stats/new
  def new
    @wide_receiver_stat = WideReceiverStat.new
  end

  # GET /wide_receiver_stats/1/edit
  def edit
  end

  # POST /wide_receiver_stats
  def create
    @wide_receiver_stat = WideReceiverStat.new(wide_receiver_stat_params)

    if @wide_receiver_stat.save
      redirect_to @wide_receiver_stat, notice: 'Wide receiver stat was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /wide_receiver_stats/1
  def update
    if @wide_receiver_stat.update(wide_receiver_stat_params)
      redirect_to @wide_receiver_stat, notice: 'Wide receiver stat was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /wide_receiver_stats/1
  def destroy
    @wide_receiver_stat.destroy
    redirect_to wide_receiver_stats_url, notice: 'Wide receiver stat was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wide_receiver_stat
      @wide_receiver_stat = WideReceiverStat.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def wide_receiver_stat_params
      params.require(:wide_receiver_stat).permit(:position_name, :shorthand, :sport_id, :position_id, :sport_name, :event, :games_played, :win, :loss, :wins, :losses, :receptions, :reception_yards, :reception_touchdowns, :fumbles, :user_id, :stat_id, :sport_id, :position_id)
    end
end
