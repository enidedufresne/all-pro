require 'test_helper'

class CatcherStatsControllerTest < ActionController::TestCase
  setup do
    @catcher_stat = catcher_stats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:catcher_stats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create catcher_stat" do
    assert_difference('CatcherStat.count') do
      post :create, catcher_stat: { at_bats: @catcher_stat.at_bats, doubles: @catcher_stat.doubles, event: @catcher_stat.event, games_played: @catcher_stat.games_played, games_started: @catcher_stat.games_started, hits: @catcher_stat.hits, home_runs: @catcher_stat.home_runs, loss: @catcher_stat.loss, losses: @catcher_stat.losses, plate_appearances: @catcher_stat.plate_appearances, position_id: @catcher_stat.position_id, position_id: @catcher_stat.position_id, position_name: @catcher_stat.position_name, runs_batted_in: @catcher_stat.runs_batted_in, runs_scored: @catcher_stat.runs_scored, shorthand: @catcher_stat.shorthand, sport_id: @catcher_stat.sport_id, sport_id: @catcher_stat.sport_id, sport_name: @catcher_stat.sport_name, stat_id: @catcher_stat.stat_id, stolen_bases: @catcher_stat.stolen_bases, strike_outs: @catcher_stat.strike_outs, triples: @catcher_stat.triples, user_id: @catcher_stat.user_id, walks: @catcher_stat.walks, win: @catcher_stat.win, wins: @catcher_stat.wins }
    end

    assert_redirected_to catcher_stat_path(assigns(:catcher_stat))
  end

  test "should show catcher_stat" do
    get :show, id: @catcher_stat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @catcher_stat
    assert_response :success
  end

  test "should update catcher_stat" do
    patch :update, id: @catcher_stat, catcher_stat: { at_bats: @catcher_stat.at_bats, doubles: @catcher_stat.doubles, event: @catcher_stat.event, games_played: @catcher_stat.games_played, games_started: @catcher_stat.games_started, hits: @catcher_stat.hits, home_runs: @catcher_stat.home_runs, loss: @catcher_stat.loss, losses: @catcher_stat.losses, plate_appearances: @catcher_stat.plate_appearances, position_id: @catcher_stat.position_id, position_id: @catcher_stat.position_id, position_name: @catcher_stat.position_name, runs_batted_in: @catcher_stat.runs_batted_in, runs_scored: @catcher_stat.runs_scored, shorthand: @catcher_stat.shorthand, sport_id: @catcher_stat.sport_id, sport_id: @catcher_stat.sport_id, sport_name: @catcher_stat.sport_name, stat_id: @catcher_stat.stat_id, stolen_bases: @catcher_stat.stolen_bases, strike_outs: @catcher_stat.strike_outs, triples: @catcher_stat.triples, user_id: @catcher_stat.user_id, walks: @catcher_stat.walks, win: @catcher_stat.win, wins: @catcher_stat.wins }
    assert_redirected_to catcher_stat_path(assigns(:catcher_stat))
  end

  test "should destroy catcher_stat" do
    assert_difference('CatcherStat.count', -1) do
      delete :destroy, id: @catcher_stat
    end

    assert_redirected_to catcher_stats_path
  end
end
