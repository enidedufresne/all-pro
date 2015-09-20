require 'test_helper'

class KickerReturnerStatsControllerTest < ActionController::TestCase
  setup do
    @kicker_returner_stat = kicker_returner_stats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kicker_returner_stats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kicker_returner_stat" do
    assert_difference('KickerReturnerStat.count') do
      post :create, kicker_returner_stat: { event: @kicker_returner_stat.event, games_played: @kicker_returner_stat.games_played, kickreturn_touchdowns: @kicker_returner_stat.kickreturn_touchdowns, kickreturn_yards: @kicker_returner_stat.kickreturn_yards, kickreturns: @kicker_returner_stat.kickreturns, loss: @kicker_returner_stat.loss, losses: @kicker_returner_stat.losses, position_id: @kicker_returner_stat.position_id, position_id: @kicker_returner_stat.position_id, position_name: @kicker_returner_stat.position_name, shorthand: @kicker_returner_stat.shorthand, sport_id: @kicker_returner_stat.sport_id, sport_id: @kicker_returner_stat.sport_id, sport_name: @kicker_returner_stat.sport_name, stat_id: @kicker_returner_stat.stat_id, user_id: @kicker_returner_stat.user_id, win: @kicker_returner_stat.win, wins: @kicker_returner_stat.wins }
    end

    assert_redirected_to kicker_returner_stat_path(assigns(:kicker_returner_stat))
  end

  test "should show kicker_returner_stat" do
    get :show, id: @kicker_returner_stat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @kicker_returner_stat
    assert_response :success
  end

  test "should update kicker_returner_stat" do
    patch :update, id: @kicker_returner_stat, kicker_returner_stat: { event: @kicker_returner_stat.event, games_played: @kicker_returner_stat.games_played, kickreturn_touchdowns: @kicker_returner_stat.kickreturn_touchdowns, kickreturn_yards: @kicker_returner_stat.kickreturn_yards, kickreturns: @kicker_returner_stat.kickreturns, loss: @kicker_returner_stat.loss, losses: @kicker_returner_stat.losses, position_id: @kicker_returner_stat.position_id, position_id: @kicker_returner_stat.position_id, position_name: @kicker_returner_stat.position_name, shorthand: @kicker_returner_stat.shorthand, sport_id: @kicker_returner_stat.sport_id, sport_id: @kicker_returner_stat.sport_id, sport_name: @kicker_returner_stat.sport_name, stat_id: @kicker_returner_stat.stat_id, user_id: @kicker_returner_stat.user_id, win: @kicker_returner_stat.win, wins: @kicker_returner_stat.wins }
    assert_redirected_to kicker_returner_stat_path(assigns(:kicker_returner_stat))
  end

  test "should destroy kicker_returner_stat" do
    assert_difference('KickerReturnerStat.count', -1) do
      delete :destroy, id: @kicker_returner_stat
    end

    assert_redirected_to kicker_returner_stats_path
  end
end
