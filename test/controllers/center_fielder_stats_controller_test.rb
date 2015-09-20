require 'test_helper'

class CenterFielderStatsControllerTest < ActionController::TestCase
  setup do
    @center_fielder_stat = center_fielder_stats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:center_fielder_stats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create center_fielder_stat" do
    assert_difference('CenterFielderStat.count') do
      post :create, center_fielder_stat: { at_bats: @center_fielder_stat.at_bats, doubles: @center_fielder_stat.doubles, event: @center_fielder_stat.event, games_played: @center_fielder_stat.games_played, games_started: @center_fielder_stat.games_started, hits: @center_fielder_stat.hits, home_runs: @center_fielder_stat.home_runs, loss: @center_fielder_stat.loss, losses: @center_fielder_stat.losses, plate_appearances: @center_fielder_stat.plate_appearances, position_id: @center_fielder_stat.position_id, position_id: @center_fielder_stat.position_id, position_name: @center_fielder_stat.position_name, runs_batted_in: @center_fielder_stat.runs_batted_in, runs_scored: @center_fielder_stat.runs_scored, shorthand: @center_fielder_stat.shorthand, sport_id: @center_fielder_stat.sport_id, sport_id: @center_fielder_stat.sport_id, sport_name: @center_fielder_stat.sport_name, stat_id: @center_fielder_stat.stat_id, stolen_bases: @center_fielder_stat.stolen_bases, strike_outs: @center_fielder_stat.strike_outs, triples: @center_fielder_stat.triples, user_id: @center_fielder_stat.user_id, walks: @center_fielder_stat.walks, win: @center_fielder_stat.win, wins: @center_fielder_stat.wins }
    end

    assert_redirected_to center_fielder_stat_path(assigns(:center_fielder_stat))
  end

  test "should show center_fielder_stat" do
    get :show, id: @center_fielder_stat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @center_fielder_stat
    assert_response :success
  end

  test "should update center_fielder_stat" do
    patch :update, id: @center_fielder_stat, center_fielder_stat: { at_bats: @center_fielder_stat.at_bats, doubles: @center_fielder_stat.doubles, event: @center_fielder_stat.event, games_played: @center_fielder_stat.games_played, games_started: @center_fielder_stat.games_started, hits: @center_fielder_stat.hits, home_runs: @center_fielder_stat.home_runs, loss: @center_fielder_stat.loss, losses: @center_fielder_stat.losses, plate_appearances: @center_fielder_stat.plate_appearances, position_id: @center_fielder_stat.position_id, position_id: @center_fielder_stat.position_id, position_name: @center_fielder_stat.position_name, runs_batted_in: @center_fielder_stat.runs_batted_in, runs_scored: @center_fielder_stat.runs_scored, shorthand: @center_fielder_stat.shorthand, sport_id: @center_fielder_stat.sport_id, sport_id: @center_fielder_stat.sport_id, sport_name: @center_fielder_stat.sport_name, stat_id: @center_fielder_stat.stat_id, stolen_bases: @center_fielder_stat.stolen_bases, strike_outs: @center_fielder_stat.strike_outs, triples: @center_fielder_stat.triples, user_id: @center_fielder_stat.user_id, walks: @center_fielder_stat.walks, win: @center_fielder_stat.win, wins: @center_fielder_stat.wins }
    assert_redirected_to center_fielder_stat_path(assigns(:center_fielder_stat))
  end

  test "should destroy center_fielder_stat" do
    assert_difference('CenterFielderStat.count', -1) do
      delete :destroy, id: @center_fielder_stat
    end

    assert_redirected_to center_fielder_stats_path
  end
end
