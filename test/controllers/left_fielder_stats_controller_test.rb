require 'test_helper'

class LeftFielderStatsControllerTest < ActionController::TestCase
  setup do
    @left_fielder_stat = left_fielder_stats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:left_fielder_stats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create left_fielder_stat" do
    assert_difference('LeftFielderStat.count') do
      post :create, left_fielder_stat: { at_bats: @left_fielder_stat.at_bats, doubles: @left_fielder_stat.doubles, event: @left_fielder_stat.event, games_played: @left_fielder_stat.games_played, games_started: @left_fielder_stat.games_started, hits: @left_fielder_stat.hits, home_runs: @left_fielder_stat.home_runs, loss: @left_fielder_stat.loss, losses: @left_fielder_stat.losses, plate_appearances: @left_fielder_stat.plate_appearances, position_id: @left_fielder_stat.position_id, position_id: @left_fielder_stat.position_id, position_name: @left_fielder_stat.position_name, runs_batted_in: @left_fielder_stat.runs_batted_in, runs_scored: @left_fielder_stat.runs_scored, shorthand: @left_fielder_stat.shorthand, sport_id: @left_fielder_stat.sport_id, sport_id: @left_fielder_stat.sport_id, sport_name: @left_fielder_stat.sport_name, stat_id: @left_fielder_stat.stat_id, stolen_bases: @left_fielder_stat.stolen_bases, strike_outs: @left_fielder_stat.strike_outs, triples: @left_fielder_stat.triples, user_id: @left_fielder_stat.user_id, walks: @left_fielder_stat.walks, win: @left_fielder_stat.win, wins: @left_fielder_stat.wins }
    end

    assert_redirected_to left_fielder_stat_path(assigns(:left_fielder_stat))
  end

  test "should show left_fielder_stat" do
    get :show, id: @left_fielder_stat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @left_fielder_stat
    assert_response :success
  end

  test "should update left_fielder_stat" do
    patch :update, id: @left_fielder_stat, left_fielder_stat: { at_bats: @left_fielder_stat.at_bats, doubles: @left_fielder_stat.doubles, event: @left_fielder_stat.event, games_played: @left_fielder_stat.games_played, games_started: @left_fielder_stat.games_started, hits: @left_fielder_stat.hits, home_runs: @left_fielder_stat.home_runs, loss: @left_fielder_stat.loss, losses: @left_fielder_stat.losses, plate_appearances: @left_fielder_stat.plate_appearances, position_id: @left_fielder_stat.position_id, position_id: @left_fielder_stat.position_id, position_name: @left_fielder_stat.position_name, runs_batted_in: @left_fielder_stat.runs_batted_in, runs_scored: @left_fielder_stat.runs_scored, shorthand: @left_fielder_stat.shorthand, sport_id: @left_fielder_stat.sport_id, sport_id: @left_fielder_stat.sport_id, sport_name: @left_fielder_stat.sport_name, stat_id: @left_fielder_stat.stat_id, stolen_bases: @left_fielder_stat.stolen_bases, strike_outs: @left_fielder_stat.strike_outs, triples: @left_fielder_stat.triples, user_id: @left_fielder_stat.user_id, walks: @left_fielder_stat.walks, win: @left_fielder_stat.win, wins: @left_fielder_stat.wins }
    assert_redirected_to left_fielder_stat_path(assigns(:left_fielder_stat))
  end

  test "should destroy left_fielder_stat" do
    assert_difference('LeftFielderStat.count', -1) do
      delete :destroy, id: @left_fielder_stat
    end

    assert_redirected_to left_fielder_stats_path
  end
end
