require 'test_helper'

class ThirdBasemanStatsControllerTest < ActionController::TestCase
  setup do
    @third_baseman_stat = third_baseman_stats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:third_baseman_stats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create third_baseman_stat" do
    assert_difference('ThirdBasemanStat.count') do
      post :create, third_baseman_stat: { at_bats: @third_baseman_stat.at_bats, doubles: @third_baseman_stat.doubles, event: @third_baseman_stat.event, games_played: @third_baseman_stat.games_played, games_started: @third_baseman_stat.games_started, hits: @third_baseman_stat.hits, home_runs: @third_baseman_stat.home_runs, loss: @third_baseman_stat.loss, losses: @third_baseman_stat.losses, plate_appearances: @third_baseman_stat.plate_appearances, position_id: @third_baseman_stat.position_id, position_id: @third_baseman_stat.position_id, position_name: @third_baseman_stat.position_name, runs_batted_in: @third_baseman_stat.runs_batted_in, runs_scored: @third_baseman_stat.runs_scored, shorthand: @third_baseman_stat.shorthand, sport_id: @third_baseman_stat.sport_id, sport_id: @third_baseman_stat.sport_id, sport_name: @third_baseman_stat.sport_name, stat_id: @third_baseman_stat.stat_id, stolen_bases: @third_baseman_stat.stolen_bases, strike_outs: @third_baseman_stat.strike_outs, triples: @third_baseman_stat.triples, user_id: @third_baseman_stat.user_id, walks: @third_baseman_stat.walks, win: @third_baseman_stat.win, wins: @third_baseman_stat.wins }
    end

    assert_redirected_to third_baseman_stat_path(assigns(:third_baseman_stat))
  end

  test "should show third_baseman_stat" do
    get :show, id: @third_baseman_stat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @third_baseman_stat
    assert_response :success
  end

  test "should update third_baseman_stat" do
    patch :update, id: @third_baseman_stat, third_baseman_stat: { at_bats: @third_baseman_stat.at_bats, doubles: @third_baseman_stat.doubles, event: @third_baseman_stat.event, games_played: @third_baseman_stat.games_played, games_started: @third_baseman_stat.games_started, hits: @third_baseman_stat.hits, home_runs: @third_baseman_stat.home_runs, loss: @third_baseman_stat.loss, losses: @third_baseman_stat.losses, plate_appearances: @third_baseman_stat.plate_appearances, position_id: @third_baseman_stat.position_id, position_id: @third_baseman_stat.position_id, position_name: @third_baseman_stat.position_name, runs_batted_in: @third_baseman_stat.runs_batted_in, runs_scored: @third_baseman_stat.runs_scored, shorthand: @third_baseman_stat.shorthand, sport_id: @third_baseman_stat.sport_id, sport_id: @third_baseman_stat.sport_id, sport_name: @third_baseman_stat.sport_name, stat_id: @third_baseman_stat.stat_id, stolen_bases: @third_baseman_stat.stolen_bases, strike_outs: @third_baseman_stat.strike_outs, triples: @third_baseman_stat.triples, user_id: @third_baseman_stat.user_id, walks: @third_baseman_stat.walks, win: @third_baseman_stat.win, wins: @third_baseman_stat.wins }
    assert_redirected_to third_baseman_stat_path(assigns(:third_baseman_stat))
  end

  test "should destroy third_baseman_stat" do
    assert_difference('ThirdBasemanStat.count', -1) do
      delete :destroy, id: @third_baseman_stat
    end

    assert_redirected_to third_baseman_stats_path
  end
end
