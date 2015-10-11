class GoalkeeperStatsController < ApplicationController
  before_action :set_user
  before_action :authenticate_user!
  before_action :set_goalkeeper_stat, only: [:show, :edit, :update, :destroy]

  # GET /goalkeeper_stats
  def index
    @goalkeeper_stats = GoalkeeperStat.all
  end

  # GET /goalkeeper_stats/1
  def show
    @comments = @goalkeeper_stat.comments
  end

  # GET /goalkeeper_stats/new
  def new
    @goalkeeper_stat = GoalkeeperStat.new
  end

  # GET /goalkeeper_stats/1/edit
  def edit
  end

  # POST /goalkeeper_stats
  def create
    @goalkeeper_stat = GoalkeeperStat.new(goalkeeper_stat_params)

    if @goalkeeper_stat.save
      redirect_to @goalkeeper_stat, notice: 'Goalkeeper stat was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /goalkeeper_stats/1
  def update
    if @goalkeeper_stat.update(goalkeeper_stat_params)
      redirect_to @goalkeeper_stat, notice: 'Goalkeeper stat was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /goalkeeper_stats/1
  def destroy
    @goalkeeper_stat.destroy
    redirect_to goalkeeper_stats_url, notice: 'Goalkeeper stat was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_goalkeeper_stat
      @goalkeeper_stat = GoalkeeperStat.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def goalkeeper_stat_params
      params.require(:goalkeeper_stat).permit(:position_name, :shorthand, :sport_id, :position_id, :sport_name, :event, :games_played, :win, :loss, :draw, :wins, :losses, :draws, :saves, :shots_faced, :user_id, :stat_id, :sport_id, :position_id)
    end
    
    def set_user
      @user = current_user
    end
end
