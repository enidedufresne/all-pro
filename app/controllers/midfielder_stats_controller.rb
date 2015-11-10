class MidfielderStatsController < ApplicationController
  before_action :set_user
  before_action :authenticate_user!
  before_action :set_midfielder_stat, only: [:show, :edit, :update, :destroy]

  # GET /midfielder_stats
  def index
    @midfielder_stats = MidfielderStat.all
  end

  # GET /midfielder_stats/1
  def show
    @comments = @midfielder_stat.comments
  end

  # GET /midfielder_stats/new
  def new
    @midfielder_stat = MidfielderStat.new
  end

  # GET /midfielder_stats/1/edit
  def edit
  end

  # POST /midfielder_stats
  def create
    @midfielder_stat = current_user.midfielder_stats.new(midfielder_stat_params)

    if @midfielder_stat.save
      # redirect_to @midfielder_stat, notice: 'midfielder stat was successfully created.'
      redirect_to root_path
    else
      # render :new
       render 'new', notice: @midfielder_stat.errors.full_messages.first
    end
  end

  # PATCH/PUT /midfielder_stats/1
  def update
    if @midfielder_stat.update(midfielder_stat_params)
      redirect_to @midfielder_stat, notice: 'Midfielder stat was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /midfielder_stats/1
  def destroy
    @midfielder_stat.destroy
    redirect_to midfielder_stats_url, notice: 'Midfielder stat was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_midfielder_stat
      @midfielder_stat = MidfielderStat.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def midfielder_stat_params
      params.require(:midfielder_stat).permit(:position_name, :shorthand, :sport_id, :position_id, :sport_name, :event, :games_played, :win, :loss, :draw, :wins, :losses, :draws, :goals, :assists, :shots_taken, :score, :opponent_score, :user_id, :stat_id, :sport_id, :position_id)
    end
    
    def set_user
      @user = current_user
    end
end
