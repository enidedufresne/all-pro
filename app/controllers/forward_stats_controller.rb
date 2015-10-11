class ForwardStatsController < ApplicationController
  before_action :set_user
  before_action :authenticate_user!
  before_action :set_forward_stat, only: [:show, :edit, :update, :destroy]

  # GET /forward_stats
  def index
    @forward_stats = ForwardStat.all
  end

  # GET /forward_stats/1
  def show
    @comments = @forward_stat.comments
  end

  # GET /forward_stats/new
  def new
    @forward_stat = ForwardStat.new
  end

  # GET /forward_stats/1/edit
  def edit
  end

  # POST /forward_stats
  def create
    @forward_stat = ForwardStat.new(forward_stat_params)

    if @forward_stat.save
      redirect_to @forward_stat, notice: 'Forward stat was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /forward_stats/1
  def update
    if @forward_stat.update(forward_stat_params)
      redirect_to @forward_stat, notice: 'Forward stat was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /forward_stats/1
  def destroy
    @forward_stat.destroy
    redirect_to forward_stats_url, notice: 'Forward stat was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_forward_stat
      @forward_stat = ForwardStat.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def forward_stat_params
      params.require(:forward_stat).permit(:position_name, :shorthand, :sport_id, :position_id, :sport_name, :event, :games_played, :win, :loss, :draw, :wins, :losses, :draws, :goals, :assists, :shots_taken, :user_id, :stat_id, :sport_id, :position_id)
    end
    
    def set_user
      @user = current_user
    end
end
