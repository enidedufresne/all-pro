class QuarterbackStatsController < ApplicationController
  before_action :set_user
  before_action :authenticate_user!
  before_action :set_quarterback_stat, only: [:show, :edit, :update, :destroy]

  # GET /quarterback_stats
  def index
    @quarterback_stats = QuarterbackStat.all
  end

  # GET /quarterback_stats/1
  def show
    @comments = @quarterback_stat.comments
  end

  # GET /quarterback_stats/new
  def new
    @quarterback_stat = QuarterbackStat.new
  end

  # GET /quarterback_stats/1/edit
  def edit
  end

  # POST /quarterback_stats
  def create
    @quarterback_stat = current_user.quarterback_stats.new(quarterback_stat_params)

    if @quarterback_stat.save
      # redirect_to @quarterback_stat, notice: 'quarterback stat was successfully created.'
      redirect_to root_path
    else
      # render :new
       render 'new', notice: @quarterback_stat.errors.full_messages.first
    end
  end

  # PATCH/PUT /quarterback_stats/1
  def update
    if @quarterback_stat.update(quarterback_stat_params)
      redirect_to @quarterback_stat, notice: 'Quarterback stat was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /quarterback_stats/1
  def destroy
    @quarterback_stat.destroy
    redirect_to quarterback_stats_url, notice: 'Quarterback stat was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quarterback_stat
      @quarterback_stat = QuarterbackStat.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def quarterback_stat_params
      params.require(:quarterback_stat).permit(:position_name, :shorthand, :sport_id, :position_id, :sport_name, :event, :games_played, :win, :loss, :wins, :losses, :pass_completions, :pass_attempts, :passing_yards, :passing_touchdowns, :rushing_attempts, :rushing_yards, :rushing_touchdowns, :fumbles, :interception, :user_id, :stat_id, :sport_id, :position_id)
    end
    
    def set_user
      @user = current_user
    end
end
