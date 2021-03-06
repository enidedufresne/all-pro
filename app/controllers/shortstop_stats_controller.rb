class ShortstopStatsController < ApplicationController
  before_action :set_user
  before_action :authenticate_user!
  before_action :set_shortstop_stat, only: [:show, :edit, :update, :destroy]

  # GET /shortstop_stats
  def index
    @shortstop_stats = ShortstopStat.all
  end

  # GET /shortstop_stats/1
  def show
    @comments = @shortstop_stat.comments
  end

  # GET /shortstop_stats/new
  def new
    @shortstop_stat = ShortstopStat.new
  end

  # GET /shortstop_stats/1/edit
  def edit
  end

  # POST /shortstop_stats
  def create
    @shortstop_stat = current_user.shortstop_stats.new(shortstop_stat_params)

    if @shortstop_stat.save
      # redirect_to @shortstop_stat, notice: 'shortstop stat was successfully created.'
      redirect_to root_path
    else
      # render :new
       render 'new', notice: @shortstop_stat.errors.full_messages.first
    end
  end

  # PATCH/PUT /shortstop_stats/1
  def update
    if @shortstop_stat.update(shortstop_stat_params)
      redirect_to @shortstop_stat, notice: 'Shortstop stat was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /shortstop_stats/1
  def destroy
    @shortstop_stat.destroy
    redirect_to shortstop_stats_url, notice: 'Shortstop stat was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shortstop_stat
      @shortstop_stat = ShortstopStat.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def shortstop_stat_params
      params.require(:shortstop_stat).permit(:position_name, :shorthand, :sport_id, :position_id, :sport_name, :event, :games_started, :games_played, :win, :loss, :wins, :losses, :plate_appearances, :at_bats, :hits, :runs_scored, :runs_batted_in, :walks, :strike_outs, :stolen_bases, :doubles, :triples, :home_runs, :score, :opponent_score, :user_id, :stat_id, :sport_id, :position_id)
    end
    
    def set_user
      @user = current_user
    end
end
