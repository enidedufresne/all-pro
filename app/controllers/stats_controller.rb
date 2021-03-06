class StatsController < ApplicationController
  before_action :set_user
  before_action :authenticate_user!
  before_action :set_stat, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource

  # # GET /stats
  # def index
  #   @stats = Stat.all
  # end

  # # GET /stats/1
  # def show
  # end

  # GET /stats/new
  def new
    # @stat = Stat.new
  end

  # # GET /stats/1/edit
  # def edit
  # end

  # # POST /stats
  # def create
  #   @stat = Stat.new(stat_params)

  #   if @stat.save
  #     redirect_to @stat, notice: 'Stat was successfully created.'
  #   else
  #     render :new
  #   end
  # end

  # # PATCH/PUT /stats/1
  # def update
  #   if @stat.update(stat_params)
  #     redirect_to @stat, notice: 'Stat was successfully updated.'
  #   else
  #     render :edit
  #   end
  # end

  # # DELETE /stats/1
  # def destroy
  #   @stat.destroy
  #   redirect_to stats_url, notice: 'Stat was successfully destroyed.'
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stat
      @stat = Stat.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def stat_params
      params.require(:stat).permit(:stat_name, :position_id, :sport_id, :user_id, :sport_id, :position_id)
    end
    
    def set_user
      @user = current_user
    end
end
