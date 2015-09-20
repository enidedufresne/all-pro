require 'test_helper'

class OffensiveLinemanStatsControllerTest < ActionController::TestCase
  setup do
    @offensive_lineman_stat = offensive_lineman_stats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:offensive_lineman_stats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create offensive_lineman_stat" do
    assert_difference('OffensiveLinemanStat.count') do
      post :create, offensive_lineman_stat: { event: @offensive_lineman_stat.event, games_played: @offensive_lineman_stat.games_played, loss: @offensive_lineman_stat.loss, losses: @offensive_lineman_stat.losses, pancakes: @offensive_lineman_stat.pancakes, position_id: @offensive_lineman_stat.position_id, position_id: @offensive_lineman_stat.position_id, position_name: @offensive_lineman_stat.position_name, shorthand: @offensive_lineman_stat.shorthand, sport_id: @offensive_lineman_stat.sport_id, sport_id: @offensive_lineman_stat.sport_id, sport_name: @offensive_lineman_stat.sport_name, stat_id: @offensive_lineman_stat.stat_id, user_id: @offensive_lineman_stat.user_id, win: @offensive_lineman_stat.win, wins: @offensive_lineman_stat.wins }
    end

    assert_redirected_to offensive_lineman_stat_path(assigns(:offensive_lineman_stat))
  end

  test "should show offensive_lineman_stat" do
    get :show, id: @offensive_lineman_stat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @offensive_lineman_stat
    assert_response :success
  end

  test "should update offensive_lineman_stat" do
    patch :update, id: @offensive_lineman_stat, offensive_lineman_stat: { event: @offensive_lineman_stat.event, games_played: @offensive_lineman_stat.games_played, loss: @offensive_lineman_stat.loss, losses: @offensive_lineman_stat.losses, pancakes: @offensive_lineman_stat.pancakes, position_id: @offensive_lineman_stat.position_id, position_id: @offensive_lineman_stat.position_id, position_name: @offensive_lineman_stat.position_name, shorthand: @offensive_lineman_stat.shorthand, sport_id: @offensive_lineman_stat.sport_id, sport_id: @offensive_lineman_stat.sport_id, sport_name: @offensive_lineman_stat.sport_name, stat_id: @offensive_lineman_stat.stat_id, user_id: @offensive_lineman_stat.user_id, win: @offensive_lineman_stat.win, wins: @offensive_lineman_stat.wins }
    assert_redirected_to offensive_lineman_stat_path(assigns(:offensive_lineman_stat))
  end

  test "should destroy offensive_lineman_stat" do
    assert_difference('OffensiveLinemanStat.count', -1) do
      delete :destroy, id: @offensive_lineman_stat
    end

    assert_redirected_to offensive_lineman_stats_path
  end
end
