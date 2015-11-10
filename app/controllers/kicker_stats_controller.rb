class KickerStatsController < ApplicationController
  before_action :set_user
  before_action :authenticate_user!
  before_action :set_kicker_stat, only: [:show, :edit, :update, :destroy]

  # GET /kicker_stats
  def index
    @kicker_stats = KickerStat.all
  end

  # GET /kicker_stats/1
  def show
    @comments = @kicker_stat.comments
  end

  # GET /kicker_stats/new
  def new
    @kicker_stat = KickerStat.new
  end

  # GET /kicker_stats/1/edit
  def edit
  end

  # POST /kicker_stats
  def create
    @kicker_stat = current_user.kicker_stats.new(kicker_stat_params)

    if @kicker_stat.save
      # redirect_to @kicker_stat, notice: 'kicker stat was successfully created.'
      redirect_to root_path
    else
      # render :new
       render 'new', notice: @kicker_stat.errors.full_messages.first
    end
  end

  # PATCH/PUT /kicker_stats/1
  def update
    if @kicker_stat.update(kicker_stat_params)
      redirect_to @kicker_stat, notice: 'Kicker stat was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /kicker_stats/1
  def destroy
    @kicker_stat.destroy
    redirect_to kicker_stats_url, notice: 'Kicker stat was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kicker_stat
      @kicker_stat = KickerStat.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def kicker_stat_params
      params.require(:kicker_stat).permit(:position_name, :shorthand, :sport_id, :position_id, :sport_name, :event, :games_played, :win, :loss, :wins, :losses, :field_goals, :score, :opponent_score, :user_id, :stat_id, :sport_id, :position_id)
    end
    
    def set_user
      @user = current_user
    end
end
