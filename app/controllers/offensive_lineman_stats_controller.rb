class OffensiveLinemanStatsController < ApplicationController
  before_action :set_user
  before_action :authenticate_user!
  before_action :set_offensive_lineman_stat, only: [:show, :edit, :update, :destroy]

  # GET /offensive_lineman_stats
  def index
    @offensive_lineman_stats = OffensiveLinemanStat.all
  end

  # GET /offensive_lineman_stats/1
  def show
    @comments = @offensive_lineman_stat.comments
  end

  # GET /offensive_lineman_stats/new
  def new
    @offensive_lineman_stat = OffensiveLinemanStat.new
  end

  # GET /offensive_lineman_stats/1/edit
  def edit
  end

  # POST /offensive_lineman_stats
  def create
    @offensive_lineman_stat = OffensiveLinemanStat.new(offensive_lineman_stat_params)

    if @offensive_lineman_stat.save
      redirect_to @offensive_lineman_stat, notice: 'Offensive lineman stat was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /offensive_lineman_stats/1
  def update
    if @offensive_lineman_stat.update(offensive_lineman_stat_params)
      redirect_to @offensive_lineman_stat, notice: 'Offensive lineman stat was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /offensive_lineman_stats/1
  def destroy
    @offensive_lineman_stat.destroy
    redirect_to offensive_lineman_stats_url, notice: 'Offensive lineman stat was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_offensive_lineman_stat
      @offensive_lineman_stat = OffensiveLinemanStat.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def offensive_lineman_stat_params
      params.require(:offensive_lineman_stat).permit(:position_name, :shorthand, :sport_id, :position_id, :sport_name, :event, :games_played, :win, :loss, :wins, :losses, :pancakes, :user_id, :stat_id, :sport_id, :position_id)
    end
    
    def set_user
      @user = current_user
    end
end
