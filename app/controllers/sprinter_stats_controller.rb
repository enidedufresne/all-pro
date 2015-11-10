class SprinterStatsController < ApplicationController
  before_action :set_user
  before_action :authenticate_user!
  before_action :set_sprinter_stat, only: [:show, :edit, :update, :destroy]

  # GET /sprinter_stats
  def index
    @sprinter_stats = SprinterStat.all
  end

  # GET /sprinter_stats/1
  def show
    @comments = @sprinter_stat.comments
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
    @sprinter_stat = current_user.sprinter_stats.new(sprinter_stat_params)

    if @sprinter_stat.save
      # redirect_to @sprinter_stat, notice: 'sprinter stat was successfully created.'
      redirect_to root_path
    else
      # render :new
       render 'new', notice: @sprinter_stat.errors.full_messages.first
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
      params.require(:sprinter_stat).permit(:position_name, :shorthand, :sport_id, :position_id, :sport_name, :event, :races_run, :other_events, :win, :loss, :wins, :losses, :team_score, :distance_time, :placed, :speed, :score, :opponent_score, :user_id, :stat_id, :sport_id, :position_id)
    end
    
    def set_user
      @user = current_user
    end
end
