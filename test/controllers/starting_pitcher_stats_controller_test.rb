require 'test_helper'

class StartingPitcherStatsControllerTest < ActionController::TestCase
  setup do
    @starting_pitcher_stat = starting_pitcher_stats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:starting_pitcher_stats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create starting_pitcher_stat" do
    assert_difference('StartingPitcherStat.count') do
      post :create, starting_pitcher_stat: { event: @starting_pitcher_stat.event, games_played: @starting_pitcher_stat.games_played, games_started: @starting_pitcher_stat.games_started, hits_allowed: @starting_pitcher_stat.hits_allowed, innings_pitched: @starting_pitcher_stat.innings_pitched, loss: @starting_pitcher_stat.loss, losses: @starting_pitcher_stat.losses, pitcher_loss: @starting_pitcher_stat.pitcher_loss, pitcher_losses: @starting_pitcher_stat.pitcher_losses, pitcher_no_decision: @starting_pitcher_stat.pitcher_no_decision, pitcher_no_decisions: @starting_pitcher_stat.pitcher_no_decisions, pitcher_saves: @starting_pitcher_stat.pitcher_saves, pitcher_win: @starting_pitcher_stat.pitcher_win, pitcher_wins: @starting_pitcher_stat.pitcher_wins, position_id: @starting_pitcher_stat.position_id, position_id: @starting_pitcher_stat.position_id, position_name: @starting_pitcher_stat.position_name, runs_allowed: @starting_pitcher_stat.runs_allowed, shorthand: @starting_pitcher_stat.shorthand, sport_id: @starting_pitcher_stat.sport_id, sport_id: @starting_pitcher_stat.sport_id, sport_name: @starting_pitcher_stat.sport_name, stat_id: @starting_pitcher_stat.stat_id, strikeouts: @starting_pitcher_stat.strikeouts, user_id: @starting_pitcher_stat.user_id, walks_allowed: @starting_pitcher_stat.walks_allowed, win: @starting_pitcher_stat.win, wins: @starting_pitcher_stat.wins }
    end

    assert_redirected_to starting_pitcher_stat_path(assigns(:starting_pitcher_stat))
  end

  test "should show starting_pitcher_stat" do
    get :show, id: @starting_pitcher_stat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @starting_pitcher_stat
    assert_response :success
  end

  test "should update starting_pitcher_stat" do
    patch :update, id: @starting_pitcher_stat, starting_pitcher_stat: { event: @starting_pitcher_stat.event, games_played: @starting_pitcher_stat.games_played, games_started: @starting_pitcher_stat.games_started, hits_allowed: @starting_pitcher_stat.hits_allowed, innings_pitched: @starting_pitcher_stat.innings_pitched, loss: @starting_pitcher_stat.loss, losses: @starting_pitcher_stat.losses, pitcher_loss: @starting_pitcher_stat.pitcher_loss, pitcher_losses: @starting_pitcher_stat.pitcher_losses, pitcher_no_decision: @starting_pitcher_stat.pitcher_no_decision, pitcher_no_decisions: @starting_pitcher_stat.pitcher_no_decisions, pitcher_saves: @starting_pitcher_stat.pitcher_saves, pitcher_win: @starting_pitcher_stat.pitcher_win, pitcher_wins: @starting_pitcher_stat.pitcher_wins, position_id: @starting_pitcher_stat.position_id, position_id: @starting_pitcher_stat.position_id, position_name: @starting_pitcher_stat.position_name, runs_allowed: @starting_pitcher_stat.runs_allowed, shorthand: @starting_pitcher_stat.shorthand, sport_id: @starting_pitcher_stat.sport_id, sport_id: @starting_pitcher_stat.sport_id, sport_name: @starting_pitcher_stat.sport_name, stat_id: @starting_pitcher_stat.stat_id, strikeouts: @starting_pitcher_stat.strikeouts, user_id: @starting_pitcher_stat.user_id, walks_allowed: @starting_pitcher_stat.walks_allowed, win: @starting_pitcher_stat.win, wins: @starting_pitcher_stat.wins }
    assert_redirected_to starting_pitcher_stat_path(assigns(:starting_pitcher_stat))
  end

  test "should destroy starting_pitcher_stat" do
    assert_difference('StartingPitcherStat.count', -1) do
      delete :destroy, id: @starting_pitcher_stat
    end

    assert_redirected_to starting_pitcher_stats_path
  end
end
