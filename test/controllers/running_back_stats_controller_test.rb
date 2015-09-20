require 'test_helper'

class RunningBackStatsControllerTest < ActionController::TestCase
  setup do
    @running_back_stat = running_back_stats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:running_back_stats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create running_back_stat" do
    assert_difference('RunningBackStat.count') do
      post :create, running_back_stat: { event: @running_back_stat.event, fumbles: @running_back_stat.fumbles, games_played: @running_back_stat.games_played, loss: @running_back_stat.loss, losses: @running_back_stat.losses, position_id: @running_back_stat.position_id, position_id: @running_back_stat.position_id, position_name: @running_back_stat.position_name, reception_touchdowns: @running_back_stat.reception_touchdowns, reception_yards: @running_back_stat.reception_yards, receptions: @running_back_stat.receptions, rushing_attempts: @running_back_stat.rushing_attempts, rushing_touchdowns: @running_back_stat.rushing_touchdowns, rushing_yards: @running_back_stat.rushing_yards, shorthand: @running_back_stat.shorthand, sport_id: @running_back_stat.sport_id, sport_id: @running_back_stat.sport_id, sport_name: @running_back_stat.sport_name, stat_id: @running_back_stat.stat_id, user_id: @running_back_stat.user_id, win: @running_back_stat.win, wins: @running_back_stat.wins }
    end

    assert_redirected_to running_back_stat_path(assigns(:running_back_stat))
  end

  test "should show running_back_stat" do
    get :show, id: @running_back_stat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @running_back_stat
    assert_response :success
  end

  test "should update running_back_stat" do
    patch :update, id: @running_back_stat, running_back_stat: { event: @running_back_stat.event, fumbles: @running_back_stat.fumbles, games_played: @running_back_stat.games_played, loss: @running_back_stat.loss, losses: @running_back_stat.losses, position_id: @running_back_stat.position_id, position_id: @running_back_stat.position_id, position_name: @running_back_stat.position_name, reception_touchdowns: @running_back_stat.reception_touchdowns, reception_yards: @running_back_stat.reception_yards, receptions: @running_back_stat.receptions, rushing_attempts: @running_back_stat.rushing_attempts, rushing_touchdowns: @running_back_stat.rushing_touchdowns, rushing_yards: @running_back_stat.rushing_yards, shorthand: @running_back_stat.shorthand, sport_id: @running_back_stat.sport_id, sport_id: @running_back_stat.sport_id, sport_name: @running_back_stat.sport_name, stat_id: @running_back_stat.stat_id, user_id: @running_back_stat.user_id, win: @running_back_stat.win, wins: @running_back_stat.wins }
    assert_redirected_to running_back_stat_path(assigns(:running_back_stat))
  end

  test "should destroy running_back_stat" do
    assert_difference('RunningBackStat.count', -1) do
      delete :destroy, id: @running_back_stat
    end

    assert_redirected_to running_back_stats_path
  end
end
