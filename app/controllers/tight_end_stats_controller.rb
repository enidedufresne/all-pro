class TightEndStatsController < ApplicationController
  before_action :set_user
  before_action :authenticate_user!
  before_action :set_tight_end_stat, only: [:show, :edit, :update, :destroy]

  # GET /tight_end_stats
  def index
    @tight_end_stats = TightEndStat.all
  end

  # GET /tight_end_stats/1
  def show
    @comments = @tight_end_stat.comments
  end

  # GET /tight_end_stats/new
  def new
    @tight_end_stat = TightEndStat.new
  end

  # GET /tight_end_stats/1/edit
  def edit
  end

  # POST /tight_end_stats
  def create
    @tight_end_stat = current_user.tight_end_stats.new(tight_end_stat_params)

    if @tight_end_stat.save
      # redirect_to @tight_end_stat, notice: 'tight_end stat was successfully created.'
      redirect_to root_path
    else
      # render :new
       render 'new', notice: @tight_end_stat.errors.full_messages.first
    end
  end

  # PATCH/PUT /tight_end_stats/1
  def update
    if @tight_end_stat.update(tight_end_stat_params)
      redirect_to @tight_end_stat, notice: 'Tight end stat was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /tight_end_stats/1
  def destroy
    @tight_end_stat.destroy
    redirect_to tight_end_stats_url, notice: 'Tight end stat was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tight_end_stat
      @tight_end_stat = TightEndStat.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tight_end_stat_params
      params.require(:tight_end_stat).permit(:position_name, :shorthand, :sport_id, :position_id, :sport_name, :event, :games_played, :win, :loss, :wins, :losses, :receptions, :reception_yards, :reception_touchdowns, :pancakes, :score, :opponent_score, :user_id, :stat_id, :sport_id, :position_id)
    end
    
    def set_user
      @user = current_user
    end
end
