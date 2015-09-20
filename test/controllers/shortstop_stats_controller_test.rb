require 'test_helper'

class ShortstopStatsControllerTest < ActionController::TestCase
  setup do
    @shortstop_stat = shortstop_stats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shortstop_stats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shortstop_stat" do
    assert_difference('ShortstopStat.count') do
      post :create, shortstop_stat: { at_bats: @shortstop_stat.at_bats, doubles: @shortstop_stat.doubles, event: @shortstop_stat.event, games_played: @shortstop_stat.games_played, games_started: @shortstop_stat.games_started, hits: @shortstop_stat.hits, home_runs: @shortstop_stat.home_runs, loss: @shortstop_stat.loss, losses: @shortstop_stat.losses, plate_appearances: @shortstop_stat.plate_appearances, position_id: @shortstop_stat.position_id, position_id: @shortstop_stat.position_id, position_name: @shortstop_stat.position_name, runs_batted_in: @shortstop_stat.runs_batted_in, runs_scored: @shortstop_stat.runs_scored, shorthand: @shortstop_stat.shorthand, sport_id: @shortstop_stat.sport_id, sport_id: @shortstop_stat.sport_id, sport_name: @shortstop_stat.sport_name, stat_id: @shortstop_stat.stat_id, stolen_bases: @shortstop_stat.stolen_bases, strike_outs: @shortstop_stat.strike_outs, triples: @shortstop_stat.triples, user_id: @shortstop_stat.user_id, walks: @shortstop_stat.walks, win: @shortstop_stat.win, wins: @shortstop_stat.wins }
    end

    assert_redirected_to shortstop_stat_path(assigns(:shortstop_stat))
  end

  test "should show shortstop_stat" do
    get :show, id: @shortstop_stat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shortstop_stat
    assert_response :success
  end

  test "should update shortstop_stat" do
    patch :update, id: @shortstop_stat, shortstop_stat: { at_bats: @shortstop_stat.at_bats, doubles: @shortstop_stat.doubles, event: @shortstop_stat.event, games_played: @shortstop_stat.games_played, games_started: @shortstop_stat.games_started, hits: @shortstop_stat.hits, home_runs: @shortstop_stat.home_runs, loss: @shortstop_stat.loss, losses: @shortstop_stat.losses, plate_appearances: @shortstop_stat.plate_appearances, position_id: @shortstop_stat.position_id, position_id: @shortstop_stat.position_id, position_name: @shortstop_stat.position_name, runs_batted_in: @shortstop_stat.runs_batted_in, runs_scored: @shortstop_stat.runs_scored, shorthand: @shortstop_stat.shorthand, sport_id: @shortstop_stat.sport_id, sport_id: @shortstop_stat.sport_id, sport_name: @shortstop_stat.sport_name, stat_id: @shortstop_stat.stat_id, stolen_bases: @shortstop_stat.stolen_bases, strike_outs: @shortstop_stat.strike_outs, triples: @shortstop_stat.triples, user_id: @shortstop_stat.user_id, walks: @shortstop_stat.walks, win: @shortstop_stat.win, wins: @shortstop_stat.wins }
    assert_redirected_to shortstop_stat_path(assigns(:shortstop_stat))
  end

  test "should destroy shortstop_stat" do
    assert_difference('ShortstopStat.count', -1) do
      delete :destroy, id: @shortstop_stat
    end

    assert_redirected_to shortstop_stats_path
  end
end
