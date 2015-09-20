require 'test_helper'

class DesignatedHitterStatsControllerTest < ActionController::TestCase
  setup do
    @designated_hitter_stat = designated_hitter_stats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:designated_hitter_stats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create designated_hitter_stat" do
    assert_difference('DesignatedHitterStat.count') do
      post :create, designated_hitter_stat: { at_bats: @designated_hitter_stat.at_bats, doubles: @designated_hitter_stat.doubles, event: @designated_hitter_stat.event, games_played: @designated_hitter_stat.games_played, games_started: @designated_hitter_stat.games_started, hits: @designated_hitter_stat.hits, home_runs: @designated_hitter_stat.home_runs, loss: @designated_hitter_stat.loss, losses: @designated_hitter_stat.losses, plate_appearances: @designated_hitter_stat.plate_appearances, position_id: @designated_hitter_stat.position_id, position_id: @designated_hitter_stat.position_id, position_name: @designated_hitter_stat.position_name, runs_batted_in: @designated_hitter_stat.runs_batted_in, runs_scored: @designated_hitter_stat.runs_scored, shorthand: @designated_hitter_stat.shorthand, sport_id: @designated_hitter_stat.sport_id, sport_id: @designated_hitter_stat.sport_id, sport_name: @designated_hitter_stat.sport_name, stat_id: @designated_hitter_stat.stat_id, stolen_bases: @designated_hitter_stat.stolen_bases, strike_outs: @designated_hitter_stat.strike_outs, triples: @designated_hitter_stat.triples, user_id: @designated_hitter_stat.user_id, walks: @designated_hitter_stat.walks, win: @designated_hitter_stat.win, wins: @designated_hitter_stat.wins }
    end

    assert_redirected_to designated_hitter_stat_path(assigns(:designated_hitter_stat))
  end

  test "should show designated_hitter_stat" do
    get :show, id: @designated_hitter_stat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @designated_hitter_stat
    assert_response :success
  end

  test "should update designated_hitter_stat" do
    patch :update, id: @designated_hitter_stat, designated_hitter_stat: { at_bats: @designated_hitter_stat.at_bats, doubles: @designated_hitter_stat.doubles, event: @designated_hitter_stat.event, games_played: @designated_hitter_stat.games_played, games_started: @designated_hitter_stat.games_started, hits: @designated_hitter_stat.hits, home_runs: @designated_hitter_stat.home_runs, loss: @designated_hitter_stat.loss, losses: @designated_hitter_stat.losses, plate_appearances: @designated_hitter_stat.plate_appearances, position_id: @designated_hitter_stat.position_id, position_id: @designated_hitter_stat.position_id, position_name: @designated_hitter_stat.position_name, runs_batted_in: @designated_hitter_stat.runs_batted_in, runs_scored: @designated_hitter_stat.runs_scored, shorthand: @designated_hitter_stat.shorthand, sport_id: @designated_hitter_stat.sport_id, sport_id: @designated_hitter_stat.sport_id, sport_name: @designated_hitter_stat.sport_name, stat_id: @designated_hitter_stat.stat_id, stolen_bases: @designated_hitter_stat.stolen_bases, strike_outs: @designated_hitter_stat.strike_outs, triples: @designated_hitter_stat.triples, user_id: @designated_hitter_stat.user_id, walks: @designated_hitter_stat.walks, win: @designated_hitter_stat.win, wins: @designated_hitter_stat.wins }
    assert_redirected_to designated_hitter_stat_path(assigns(:designated_hitter_stat))
  end

  test "should destroy designated_hitter_stat" do
    assert_difference('DesignatedHitterStat.count', -1) do
      delete :destroy, id: @designated_hitter_stat
    end

    assert_redirected_to designated_hitter_stats_path
  end
end
