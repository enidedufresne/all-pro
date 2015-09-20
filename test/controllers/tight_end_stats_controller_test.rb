require 'test_helper'

class TightEndStatsControllerTest < ActionController::TestCase
  setup do
    @tight_end_stat = tight_end_stats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tight_end_stats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tight_end_stat" do
    assert_difference('TightEndStat.count') do
      post :create, tight_end_stat: { event: @tight_end_stat.event, games_played: @tight_end_stat.games_played, loss: @tight_end_stat.loss, losses: @tight_end_stat.losses, pancakes: @tight_end_stat.pancakes, position_id: @tight_end_stat.position_id, position_id: @tight_end_stat.position_id, position_name: @tight_end_stat.position_name, reception_touchdowns: @tight_end_stat.reception_touchdowns, reception_yards: @tight_end_stat.reception_yards, receptions: @tight_end_stat.receptions, shorthand: @tight_end_stat.shorthand, sport_id: @tight_end_stat.sport_id, sport_id: @tight_end_stat.sport_id, sport_name: @tight_end_stat.sport_name, stat_id: @tight_end_stat.stat_id, user_id: @tight_end_stat.user_id, win: @tight_end_stat.win, wins: @tight_end_stat.wins }
    end

    assert_redirected_to tight_end_stat_path(assigns(:tight_end_stat))
  end

  test "should show tight_end_stat" do
    get :show, id: @tight_end_stat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tight_end_stat
    assert_response :success
  end

  test "should update tight_end_stat" do
    patch :update, id: @tight_end_stat, tight_end_stat: { event: @tight_end_stat.event, games_played: @tight_end_stat.games_played, loss: @tight_end_stat.loss, losses: @tight_end_stat.losses, pancakes: @tight_end_stat.pancakes, position_id: @tight_end_stat.position_id, position_id: @tight_end_stat.position_id, position_name: @tight_end_stat.position_name, reception_touchdowns: @tight_end_stat.reception_touchdowns, reception_yards: @tight_end_stat.reception_yards, receptions: @tight_end_stat.receptions, shorthand: @tight_end_stat.shorthand, sport_id: @tight_end_stat.sport_id, sport_id: @tight_end_stat.sport_id, sport_name: @tight_end_stat.sport_name, stat_id: @tight_end_stat.stat_id, user_id: @tight_end_stat.user_id, win: @tight_end_stat.win, wins: @tight_end_stat.wins }
    assert_redirected_to tight_end_stat_path(assigns(:tight_end_stat))
  end

  test "should destroy tight_end_stat" do
    assert_difference('TightEndStat.count', -1) do
      delete :destroy, id: @tight_end_stat
    end

    assert_redirected_to tight_end_stats_path
  end
end
