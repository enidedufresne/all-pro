class LineBackerStatsController < ApplicationController
  before_action :set_user
  before_action :authenticate_user!
  before_action :set_line_backer_stat, only: [:show, :edit, :update, :destroy]

  # GET /line_backer_stats
  def index
    @line_backer_stats = LineBackerStat.all
  end

  # GET /line_backer_stats/1
  def show
    @comments = @line_backer_stat.comments
  end

  # GET /line_backer_stats/new
  def new
    @line_backer_stat = LineBackerStat.new
  end

  # GET /line_backer_stats/1/edit
  def edit
  end

  # POST /line_backer_stats
  def create
    @line_backer_stat = current_user.line_backer_stats.new(line_backer_stat_params)

    if @line_backer_stat.save
      # redirect_to @line_backer_stat, notice: 'line_backer stat was successfully created.'
      redirect_to root_path
    else
      # render :new
       render 'new', notice: @line_backer_stat.errors.full_messages.first
    end
  end

  # PATCH/PUT /line_backer_stats/1
  def update
    if @line_backer_stat.update(line_backer_stat_params)
      redirect_to @line_backer_stat, notice: 'Line backer stat was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /line_backer_stats/1
  def destroy
    @line_backer_stat.destroy
    redirect_to line_backer_stats_url, notice: 'Line backer stat was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_line_backer_stat
      @line_backer_stat = LineBackerStat.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def line_backer_stat_params
      params.require(:line_backer_stat).permit(:position_name, :shorthand, :sport_id, :position_id, :sport_name, :event, :win, :loss, :wins, :losses, :tackles, :sacks, :fumbles, :interception, :user_id, :stat_id, :sport_id, :position_id)
    end
    
    def set_user
      @user = current_user
    end
end
