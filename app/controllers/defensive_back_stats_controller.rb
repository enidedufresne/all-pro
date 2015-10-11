class DefensiveBackStatsController < ApplicationController
  before_action :set_user
  before_action :authenticate_user!
  before_action :set_defensive_back_stat, only: [:show, :edit, :update, :destroy]

  # GET /defensive_back_stats
  def index
    @defensive_back_stats = DefensiveBackStat.all
  end

  # GET /defensive_back_stats/1
  def show
    @comments = @defensive_back_stat.comments
  end

  # GET /defensive_back_stats/new
  def new
    @defensive_back_stat = DefensiveBackStat.new
  end

  # GET /defensive_back_stats/1/edit
  def edit
  end

  # POST /defensive_back_stats
  def create
    @defensive_back_stat = current_user.defensive_back_stats.new(defensive_back_stat_params)

    if @defensive_back_stat.save
      # redirect_to @defensive_back_stat, notice: 'defensive_back stat was successfully created.'
      redirect_to root_path
    else
      # render :new
       render 'new', notice: @defensive_back_stat.errors.full_messages.first
    end
  end

  # PATCH/PUT /defensive_back_stats/1
  def update
    if @defensive_back_stat.update(defensive_back_stat_params)
      redirect_to @defensive_back_stat, notice: 'Defensive back stat was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /defensive_back_stats/1
  def destroy
    @defensive_back_stat.destroy
    redirect_to defensive_back_stats_url, notice: 'Defensive back stat was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_defensive_back_stat
      @defensive_back_stat = DefensiveBackStat.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def defensive_back_stat_params
      params.require(:defensive_back_stat).permit(:position_name, :shorthand, :sport_id, :position_id, :sport_name, :event, :win, :loss, :wins, :losses, :tackles, :sacks, :fumbles, :interception, :user_id, :stat_id, :sport_id, :position_id)
    end
    
    def set_user
      @user = current_user
    end
end
