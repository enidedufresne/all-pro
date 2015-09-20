require 'test_helper'

class QuarterbackStatsControllerTest < ActionController::TestCase
  setup do
    @quarterback_stat = quarterback_stats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:quarterback_stats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create quarterback_stat" do
    assert_difference('QuarterbackStat.count') do
      post :create, quarterback_stat: { event: @quarterback_stat.event, fumbles: @quarterback_stat.fumbles, games_played: @quarterback_stat.games_played, interception: @quarterback_stat.interception, loss: @quarterback_stat.loss, losses: @quarterback_stat.losses, pass_attempts: @quarterback_stat.pass_attempts, pass_completions: @quarterback_stat.pass_completions, passing_touchdowns: @quarterback_stat.passing_touchdowns, passing_yards: @quarterback_stat.passing_yards, position_id: @quarterback_stat.position_id, position_id: @quarterback_stat.position_id, position_name: @quarterback_stat.position_name, rushing_attempts: @quarterback_stat.rushing_attempts, rushing_touchdowns: @quarterback_stat.rushing_touchdowns, rushing_yards: @quarterback_stat.rushing_yards, shorthand: @quarterback_stat.shorthand, sport_id: @quarterback_stat.sport_id, sport_id: @quarterback_stat.sport_id, sport_name: @quarterback_stat.sport_name, stat_id: @quarterback_stat.stat_id, user_id: @quarterback_stat.user_id, win: @quarterback_stat.win, wins: @quarterback_stat.wins }
    end

    assert_redirected_to quarterback_stat_path(assigns(:quarterback_stat))
  end

  test "should show quarterback_stat" do
    get :show, id: @quarterback_stat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @quarterback_stat
    assert_response :success
  end

  test "should update quarterback_stat" do
    patch :update, id: @quarterback_stat, quarterback_stat: { event: @quarterback_stat.event, fumbles: @quarterback_stat.fumbles, games_played: @quarterback_stat.games_played, interception: @quarterback_stat.interception, loss: @quarterback_stat.loss, losses: @quarterback_stat.losses, pass_attempts: @quarterback_stat.pass_attempts, pass_completions: @quarterback_stat.pass_completions, passing_touchdowns: @quarterback_stat.passing_touchdowns, passing_yards: @quarterback_stat.passing_yards, position_id: @quarterback_stat.position_id, position_id: @quarterback_stat.position_id, position_name: @quarterback_stat.position_name, rushing_attempts: @quarterback_stat.rushing_attempts, rushing_touchdowns: @quarterback_stat.rushing_touchdowns, rushing_yards: @quarterback_stat.rushing_yards, shorthand: @quarterback_stat.shorthand, sport_id: @quarterback_stat.sport_id, sport_id: @quarterback_stat.sport_id, sport_name: @quarterback_stat.sport_name, stat_id: @quarterback_stat.stat_id, user_id: @quarterback_stat.user_id, win: @quarterback_stat.win, wins: @quarterback_stat.wins }
    assert_redirected_to quarterback_stat_path(assigns(:quarterback_stat))
  end

  test "should destroy quarterback_stat" do
    assert_difference('QuarterbackStat.count', -1) do
      delete :destroy, id: @quarterback_stat
    end

    assert_redirected_to quarterback_stats_path
  end
end
