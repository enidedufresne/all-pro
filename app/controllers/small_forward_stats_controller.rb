class SmallForwardStatsController < ApplicationController
  before_action :set_user
  before_action :authenticate_user!
  before_action :set_small_forward_stat, only: [:show, :edit, :update, :destroy]

  # GET /small_forward_stats
  def index
    @small_forward_stats = SmallForwardStat.all
  end

  # GET /small_forward_stats/1
  def show
    @comments = @small_forward_stat.comments
  end

  # GET /small_forward_stats/new
  def new
    @small_forward_stat = SmallForwardStat.new
  end

  # GET /small_forward_stats/1/edit
  def edit
  end

  # POST /small_forward_stats
  def create
    @small_forward_stat = SmallForwardStat.new(small_forward_stat_params)

    if @small_forward_stat.save
      redirect_to @small_forward_stat, notice: 'Small forward stat was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /small_forward_stats/1
  def update
    if @small_forward_stat.update(small_forward_stat_params)
      redirect_to @small_forward_stat, notice: 'Small forward stat was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /small_forward_stats/1
  def destroy
    @small_forward_stat.destroy
    redirect_to small_forward_stats_url, notice: 'Small forward stat was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_small_forward_stat
      @small_forward_stat = SmallForwardStat.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def small_forward_stat_params
      params.require(:small_forward_stat).permit(:position_name, :shorthand, :sport_id, :position_id, :sport_name, :event, :games_started, :games_played, :win, :loss, :wins, :losses, :minutes_played, :fieldgoals_made, :fieldgoal_attemps, :threepoints_made, :threepoint_attemps, :freethrows_made, :freethrow_attemps, :rebounds, :assists, :steals, :blocks, :points, :user_id, :stat_id, :sport_id, :position_id)
    end
    
    def set_user
      @user = current_user
    end
end
