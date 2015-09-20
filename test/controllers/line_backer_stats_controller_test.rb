require 'test_helper'

class LineBackerStatsControllerTest < ActionController::TestCase
  setup do
    @line_backer_stat = line_backer_stats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:line_backer_stats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create line_backer_stat" do
    assert_difference('LineBackerStat.count') do
      post :create, line_backer_stat: { event: @line_backer_stat.event, fumbles: @line_backer_stat.fumbles, interception: @line_backer_stat.interception, loss: @line_backer_stat.loss, losses: @line_backer_stat.losses, position_id: @line_backer_stat.position_id, position_id: @line_backer_stat.position_id, position_name: @line_backer_stat.position_name, sacks: @line_backer_stat.sacks, shorthand: @line_backer_stat.shorthand, sport_id: @line_backer_stat.sport_id, sport_id: @line_backer_stat.sport_id, sport_name: @line_backer_stat.sport_name, stat_id: @line_backer_stat.stat_id, tackles: @line_backer_stat.tackles, user_id: @line_backer_stat.user_id, win: @line_backer_stat.win, wins: @line_backer_stat.wins }
    end

    assert_redirected_to line_backer_stat_path(assigns(:line_backer_stat))
  end

  test "should show line_backer_stat" do
    get :show, id: @line_backer_stat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @line_backer_stat
    assert_response :success
  end

  test "should update line_backer_stat" do
    patch :update, id: @line_backer_stat, line_backer_stat: { event: @line_backer_stat.event, fumbles: @line_backer_stat.fumbles, interception: @line_backer_stat.interception, loss: @line_backer_stat.loss, losses: @line_backer_stat.losses, position_id: @line_backer_stat.position_id, position_id: @line_backer_stat.position_id, position_name: @line_backer_stat.position_name, sacks: @line_backer_stat.sacks, shorthand: @line_backer_stat.shorthand, sport_id: @line_backer_stat.sport_id, sport_id: @line_backer_stat.sport_id, sport_name: @line_backer_stat.sport_name, stat_id: @line_backer_stat.stat_id, tackles: @line_backer_stat.tackles, user_id: @line_backer_stat.user_id, win: @line_backer_stat.win, wins: @line_backer_stat.wins }
    assert_redirected_to line_backer_stat_path(assigns(:line_backer_stat))
  end

  test "should destroy line_backer_stat" do
    assert_difference('LineBackerStat.count', -1) do
      delete :destroy, id: @line_backer_stat
    end

    assert_redirected_to line_backer_stats_path
  end
end
