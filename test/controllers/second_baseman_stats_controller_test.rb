require 'test_helper'

class SecondBasemanStatsControllerTest < ActionController::TestCase
  setup do
    @second_baseman_stat = second_baseman_stats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:second_baseman_stats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create second_baseman_stat" do
    assert_difference('SecondBasemanStat.count') do
      post :create, second_baseman_stat: { at_bats: @second_baseman_stat.at_bats, doubles: @second_baseman_stat.doubles, event: @second_baseman_stat.event, games_played: @second_baseman_stat.games_played, games_started: @second_baseman_stat.games_started, hits: @second_baseman_stat.hits, home_runs: @second_baseman_stat.home_runs, loss: @second_baseman_stat.loss, losses: @second_baseman_stat.losses, plate_appearances: @second_baseman_stat.plate_appearances, position_id: @second_baseman_stat.position_id, position_id: @second_baseman_stat.position_id, position_name: @second_baseman_stat.position_name, runs_batted_in: @second_baseman_stat.runs_batted_in, runs_scored: @second_baseman_stat.runs_scored, shorthand: @second_baseman_stat.shorthand, sport_id: @second_baseman_stat.sport_id, sport_id: @second_baseman_stat.sport_id, sport_name: @second_baseman_stat.sport_name, stat_id: @second_baseman_stat.stat_id, stolen_bases: @second_baseman_stat.stolen_bases, strike_outs: @second_baseman_stat.strike_outs, triples: @second_baseman_stat.triples, user_id: @second_baseman_stat.user_id, walks: @second_baseman_stat.walks, win: @second_baseman_stat.win, wins: @second_baseman_stat.wins }
    end

    assert_redirected_to second_baseman_stat_path(assigns(:second_baseman_stat))
  end

  test "should show second_baseman_stat" do
    get :show, id: @second_baseman_stat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @second_baseman_stat
    assert_response :success
  end

  test "should update second_baseman_stat" do
    patch :update, id: @second_baseman_stat, second_baseman_stat: { at_bats: @second_baseman_stat.at_bats, doubles: @second_baseman_stat.doubles, event: @second_baseman_stat.event, games_played: @second_baseman_stat.games_played, games_started: @second_baseman_stat.games_started, hits: @second_baseman_stat.hits, home_runs: @second_baseman_stat.home_runs, loss: @second_baseman_stat.loss, losses: @second_baseman_stat.losses, plate_appearances: @second_baseman_stat.plate_appearances, position_id: @second_baseman_stat.position_id, position_id: @second_baseman_stat.position_id, position_name: @second_baseman_stat.position_name, runs_batted_in: @second_baseman_stat.runs_batted_in, runs_scored: @second_baseman_stat.runs_scored, shorthand: @second_baseman_stat.shorthand, sport_id: @second_baseman_stat.sport_id, sport_id: @second_baseman_stat.sport_id, sport_name: @second_baseman_stat.sport_name, stat_id: @second_baseman_stat.stat_id, stolen_bases: @second_baseman_stat.stolen_bases, strike_outs: @second_baseman_stat.strike_outs, triples: @second_baseman_stat.triples, user_id: @second_baseman_stat.user_id, walks: @second_baseman_stat.walks, win: @second_baseman_stat.win, wins: @second_baseman_stat.wins }
    assert_redirected_to second_baseman_stat_path(assigns(:second_baseman_stat))
  end

  test "should destroy second_baseman_stat" do
    assert_difference('SecondBasemanStat.count', -1) do
      delete :destroy, id: @second_baseman_stat
    end

    assert_redirected_to second_baseman_stats_path
  end
end
