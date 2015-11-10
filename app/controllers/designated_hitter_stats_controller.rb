class DesignatedHitterStatsController < ApplicationController
  before_action :set_user
  before_action :authenticate_user!
  before_action :set_designated_hitter_stat, only: [:show, :edit, :update, :destroy]

  # GET /designated_hitter_stats
  def index
    @designated_hitter_stats = DesignatedHitterStat.all
  end

  # GET /designated_hitter_stats/1
  def show
    @comments = @designated_hitter_stat.comments
  end

  # GET /designated_hitter_stats/new
  def new
    @designated_hitter_stat = DesignatedHitterStat.new
  end

  # GET /designated_hitter_stats/1/edit
  def edit
  end

  # POST /designated_hitter_stats
  def create
    @designated_hitter_stat = current_user.designated_hitter_stats.new(designated_hitter_stat_params)

    if @designated_hitter_stat.save
      # redirect_to @designated_hitter_stat, notice: 'designated_hitter stat was successfully created.'
      redirect_to root_path
    else
      # render :new
       render 'new', notice: @designated_hitter_stat.errors.full_messages.first
    end
  end

  # PATCH/PUT /designated_hitter_stats/1
  def update
    if @designated_hitter_stat.update(designated_hitter_stat_params)
      redirect_to @designated_hitter_stat, notice: 'Designated hitter stat was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /designated_hitter_stats/1
  def destroy
    @designated_hitter_stat.destroy
    redirect_to designated_hitter_stats_url, notice: 'Designated hitter stat was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_designated_hitter_stat
      @designated_hitter_stat = DesignatedHitterStat.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def designated_hitter_stat_params
      params.require(:designated_hitter_stat).permit(:position_name, :shorthand, :sport_id, :position_id, :sport_name, :event, :games_started, :games_played, :win, :loss, :wins, :losses, :plate_appearances, :at_bats, :hits, :runs_scored, :runs_batted_in, :walks, :strike_outs, :stolen_bases, :doubles, :triples, :home_runs, :score, :opponent_score, :user_id, :stat_id, :sport_id, :position_id)
    end
    
    def set_user
      @user = current_user
    end
end
