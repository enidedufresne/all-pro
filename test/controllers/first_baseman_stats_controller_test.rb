require 'test_helper'

class FirstBasemanStatsControllerTest < ActionController::TestCase
  setup do
    @first_baseman_stat = first_baseman_stats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:first_baseman_stats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create first_baseman_stat" do
    assert_difference('FirstBasemanStat.count') do
      post :create, first_baseman_stat: { at_bats: @first_baseman_stat.at_bats, doubles: @first_baseman_stat.doubles, event: @first_baseman_stat.event, games_played: @first_baseman_stat.games_played, games_started: @first_baseman_stat.games_started, hits: @first_baseman_stat.hits, home_runs: @first_baseman_stat.home_runs, loss: @first_baseman_stat.loss, losses: @first_baseman_stat.losses, plate_appearances: @first_baseman_stat.plate_appearances, position_id: @first_baseman_stat.position_id, position_id: @first_baseman_stat.position_id, position_name: @first_baseman_stat.position_name, runs_batted_in: @first_baseman_stat.runs_batted_in, runs_scored: @first_baseman_stat.runs_scored, shorthand: @first_baseman_stat.shorthand, sport_id: @first_baseman_stat.sport_id, sport_id: @first_baseman_stat.sport_id, sport_name: @first_baseman_stat.sport_name, stat_id: @first_baseman_stat.stat_id, stolen_bases: @first_baseman_stat.stolen_bases, strike_outs: @first_baseman_stat.strike_outs, triples: @first_baseman_stat.triples, user_id: @first_baseman_stat.user_id, walks: @first_baseman_stat.walks, win: @first_baseman_stat.win, wins: @first_baseman_stat.wins }
    end

    assert_redirected_to first_baseman_stat_path(assigns(:first_baseman_stat))
  end

  test "should show first_baseman_stat" do
    get :show, id: @first_baseman_stat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @first_baseman_stat
    assert_response :success
  end

  test "should update first_baseman_stat" do
    patch :update, id: @first_baseman_stat, first_baseman_stat: { at_bats: @first_baseman_stat.at_bats, doubles: @first_baseman_stat.doubles, event: @first_baseman_stat.event, games_played: @first_baseman_stat.games_played, games_started: @first_baseman_stat.games_started, hits: @first_baseman_stat.hits, home_runs: @first_baseman_stat.home_runs, loss: @first_baseman_stat.loss, losses: @first_baseman_stat.losses, plate_appearances: @first_baseman_stat.plate_appearances, position_id: @first_baseman_stat.position_id, position_id: @first_baseman_stat.position_id, position_name: @first_baseman_stat.position_name, runs_batted_in: @first_baseman_stat.runs_batted_in, runs_scored: @first_baseman_stat.runs_scored, shorthand: @first_baseman_stat.shorthand, sport_id: @first_baseman_stat.sport_id, sport_id: @first_baseman_stat.sport_id, sport_name: @first_baseman_stat.sport_name, stat_id: @first_baseman_stat.stat_id, stolen_bases: @first_baseman_stat.stolen_bases, strike_outs: @first_baseman_stat.strike_outs, triples: @first_baseman_stat.triples, user_id: @first_baseman_stat.user_id, walks: @first_baseman_stat.walks, win: @first_baseman_stat.win, wins: @first_baseman_stat.wins }
    assert_redirected_to first_baseman_stat_path(assigns(:first_baseman_stat))
  end

  test "should destroy first_baseman_stat" do
    assert_difference('FirstBasemanStat.count', -1) do
      delete :destroy, id: @first_baseman_stat
    end

    assert_redirected_to first_baseman_stats_path
  end
end
