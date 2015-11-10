class RunnerStatsController < ApplicationController
  before_action :set_user
  before_action :authenticate_user!
  before_action :set_runner_stat, only: [:show, :edit, :update, :destroy]

  # GET /runner_stats
  def index
    @runner_stats = RunnerStat.all
  end

  # GET /runner_stats/1
  def show
    @comments = @runner_stat.comments
  end

  # GET /runner_stats/new
  def new
    @runner_stat = RunnerStat.new
  end

  # GET /runner_stats/1/edit
  def edit
  end

  # POST /runner_stats
  def create
    @runner_stat = current_user.runner_stats.new(runner_stat_params)

    if @runner_stat.save
      # redirect_to @runner_stat, notice: 'runner stat was successfully created.'
      redirect_to root_path
    else
      # render :new
       render 'new', notice: @runner_stat.errors.full_messages.first
    end
  end

  # PATCH/PUT /runner_stats/1
  def update
    if @runner_stat.update(runner_stat_params)
      redirect_to @runner_stat, notice: 'Runner stat was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /runner_stats/1
  def destroy
    @runner_stat.destroy
    redirect_to runner_stats_url, notice: 'Runner stat was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_runner_stat
      @runner_stat = RunnerStat.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def runner_stat_params
      params.require(:runner_stat).permit(:position_name, :shorthand, :sport_id, :position_id, :sport_name, :event, :races_run, :win, :loss, :wins, :losses, :team_score, :distance_time, :placed, :speed, :score, :opponent_score, :user_id, :stat_id, :sport_id, :position_id)
    end
    
    def set_user
      @user = current_user
    end
end
