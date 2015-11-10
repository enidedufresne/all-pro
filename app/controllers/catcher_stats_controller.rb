class CatcherStatsController < ApplicationController
  before_action :set_user
  before_action :authenticate_user!
  before_action :set_catcher_stat, only: [:show, :edit, :update, :destroy]

  # GET /catcher_stats
  def index
    @catcher_stats = CatcherStat.all
  end

  # GET /catcher_stats/1
  def show
    @comments = @catcher_stat.comments
  end

  # GET /catcher_stats/new
  def new
    @catcher_stat = CatcherStat.new
  end

  # GET /catcher_stats/1/edit
  def edit
  end

  # POST /catcher_stats
  def create
    @catcher_stat = current_user.catcher_stats.new(catcher_stat_params)

    if @catcher_stat.save
      # redirect_to @catcher_stat, notice: 'catcher stat was successfully created.'
      redirect_to root_path
    else
      # render :new
       render 'new', notice: @catcher_stat.errors.full_messages.first
    end
  end

  # PATCH/PUT /catcher_stats/1
  def update
    if @catcher_stat.update(catcher_stat_params)
      redirect_to @catcher_stat, notice: 'Catcher stat was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /catcher_stats/1
  def destroy
    @catcher_stat.destroy
    redirect_to catcher_stats_url, notice: 'Catcher stat was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_catcher_stat
      @catcher_stat = CatcherStat.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def catcher_stat_params
      params.require(:catcher_stat).permit(:position_name, :shorthand, :sport_id, :position_id, :sport_name, :event, :games_started, :games_played, :win, :loss, :wins, :losses, :plate_appearances, :at_bats, :hits, :runs_scored, :runs_batted_in, :walks, :strike_outs, :stolen_bases, :doubles, :triples, :home_runs, :user_id, :stat_id, :sport_id, :position_id, :score, :opponent_score)
    end
    
    def set_user
      @user = current_user
    end
end
