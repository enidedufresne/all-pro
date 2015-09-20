require 'test_helper'

class RightFielderStatsControllerTest < ActionController::TestCase
  setup do
    @right_fielder_stat = right_fielder_stats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:right_fielder_stats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create right_fielder_stat" do
    assert_difference('RightFielderStat.count') do
      post :create, right_fielder_stat: { at_bats: @right_fielder_stat.at_bats, doubles: @right_fielder_stat.doubles, event: @right_fielder_stat.event, games_played: @right_fielder_stat.games_played, games_started: @right_fielder_stat.games_started, hits: @right_fielder_stat.hits, home_runs: @right_fielder_stat.home_runs, loss: @right_fielder_stat.loss, losses: @right_fielder_stat.losses, plate_appearances: @right_fielder_stat.plate_appearances, position_id: @right_fielder_stat.position_id, position_id: @right_fielder_stat.position_id, position_name: @right_fielder_stat.position_name, runs_batted_in: @right_fielder_stat.runs_batted_in, runs_scored: @right_fielder_stat.runs_scored, shorthand: @right_fielder_stat.shorthand, sport_id: @right_fielder_stat.sport_id, sport_id: @right_fielder_stat.sport_id, sport_name: @right_fielder_stat.sport_name, stat_id: @right_fielder_stat.stat_id, stolen_bases: @right_fielder_stat.stolen_bases, strike_outs: @right_fielder_stat.strike_outs, triples: @right_fielder_stat.triples, user_id: @right_fielder_stat.user_id, walks: @right_fielder_stat.walks, win: @right_fielder_stat.win, wins: @right_fielder_stat.wins }
    end

    assert_redirected_to right_fielder_stat_path(assigns(:right_fielder_stat))
  end

  test "should show right_fielder_stat" do
    get :show, id: @right_fielder_stat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @right_fielder_stat
    assert_response :success
  end

  test "should update right_fielder_stat" do
    patch :update, id: @right_fielder_stat, right_fielder_stat: { at_bats: @right_fielder_stat.at_bats, doubles: @right_fielder_stat.doubles, event: @right_fielder_stat.event, games_played: @right_fielder_stat.games_played, games_started: @right_fielder_stat.games_started, hits: @right_fielder_stat.hits, home_runs: @right_fielder_stat.home_runs, loss: @right_fielder_stat.loss, losses: @right_fielder_stat.losses, plate_appearances: @right_fielder_stat.plate_appearances, position_id: @right_fielder_stat.position_id, position_id: @right_fielder_stat.position_id, position_name: @right_fielder_stat.position_name, runs_batted_in: @right_fielder_stat.runs_batted_in, runs_scored: @right_fielder_stat.runs_scored, shorthand: @right_fielder_stat.shorthand, sport_id: @right_fielder_stat.sport_id, sport_id: @right_fielder_stat.sport_id, sport_name: @right_fielder_stat.sport_name, stat_id: @right_fielder_stat.stat_id, stolen_bases: @right_fielder_stat.stolen_bases, strike_outs: @right_fielder_stat.strike_outs, triples: @right_fielder_stat.triples, user_id: @right_fielder_stat.user_id, walks: @right_fielder_stat.walks, win: @right_fielder_stat.win, wins: @right_fielder_stat.wins }
    assert_redirected_to right_fielder_stat_path(assigns(:right_fielder_stat))
  end

  test "should destroy right_fielder_stat" do
    assert_difference('RightFielderStat.count', -1) do
      delete :destroy, id: @right_fielder_stat
    end

    assert_redirected_to right_fielder_stats_path
  end
end
