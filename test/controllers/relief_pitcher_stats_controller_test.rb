require 'test_helper'

class ReliefPitcherStatsControllerTest < ActionController::TestCase
  setup do
    @relief_pitcher_stat = relief_pitcher_stats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:relief_pitcher_stats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create relief_pitcher_stat" do
    assert_difference('ReliefPitcherStat.count') do
      post :create, relief_pitcher_stat: { event: @relief_pitcher_stat.event, games_played: @relief_pitcher_stat.games_played, games_started: @relief_pitcher_stat.games_started, hits_allowed: @relief_pitcher_stat.hits_allowed, innings_pitched: @relief_pitcher_stat.innings_pitched, loss: @relief_pitcher_stat.loss, losses: @relief_pitcher_stat.losses, pitcher_loss: @relief_pitcher_stat.pitcher_loss, pitcher_losses: @relief_pitcher_stat.pitcher_losses, pitcher_no_decision: @relief_pitcher_stat.pitcher_no_decision, pitcher_no_decisions: @relief_pitcher_stat.pitcher_no_decisions, pitcher_saves: @relief_pitcher_stat.pitcher_saves, pitcher_win: @relief_pitcher_stat.pitcher_win, pitcher_wins: @relief_pitcher_stat.pitcher_wins, position_id: @relief_pitcher_stat.position_id, position_id: @relief_pitcher_stat.position_id, position_name: @relief_pitcher_stat.position_name, runs_allowed: @relief_pitcher_stat.runs_allowed, shorthand: @relief_pitcher_stat.shorthand, sport_id: @relief_pitcher_stat.sport_id, sport_id: @relief_pitcher_stat.sport_id, sport_name: @relief_pitcher_stat.sport_name, stat_id: @relief_pitcher_stat.stat_id, strikeouts: @relief_pitcher_stat.strikeouts, user_id: @relief_pitcher_stat.user_id, walks_allowed: @relief_pitcher_stat.walks_allowed, win: @relief_pitcher_stat.win, wins: @relief_pitcher_stat.wins }
    end

    assert_redirected_to relief_pitcher_stat_path(assigns(:relief_pitcher_stat))
  end

  test "should show relief_pitcher_stat" do
    get :show, id: @relief_pitcher_stat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @relief_pitcher_stat
    assert_response :success
  end

  test "should update relief_pitcher_stat" do
    patch :update, id: @relief_pitcher_stat, relief_pitcher_stat: { event: @relief_pitcher_stat.event, games_played: @relief_pitcher_stat.games_played, games_started: @relief_pitcher_stat.games_started, hits_allowed: @relief_pitcher_stat.hits_allowed, innings_pitched: @relief_pitcher_stat.innings_pitched, loss: @relief_pitcher_stat.loss, losses: @relief_pitcher_stat.losses, pitcher_loss: @relief_pitcher_stat.pitcher_loss, pitcher_losses: @relief_pitcher_stat.pitcher_losses, pitcher_no_decision: @relief_pitcher_stat.pitcher_no_decision, pitcher_no_decisions: @relief_pitcher_stat.pitcher_no_decisions, pitcher_saves: @relief_pitcher_stat.pitcher_saves, pitcher_win: @relief_pitcher_stat.pitcher_win, pitcher_wins: @relief_pitcher_stat.pitcher_wins, position_id: @relief_pitcher_stat.position_id, position_id: @relief_pitcher_stat.position_id, position_name: @relief_pitcher_stat.position_name, runs_allowed: @relief_pitcher_stat.runs_allowed, shorthand: @relief_pitcher_stat.shorthand, sport_id: @relief_pitcher_stat.sport_id, sport_id: @relief_pitcher_stat.sport_id, sport_name: @relief_pitcher_stat.sport_name, stat_id: @relief_pitcher_stat.stat_id, strikeouts: @relief_pitcher_stat.strikeouts, user_id: @relief_pitcher_stat.user_id, walks_allowed: @relief_pitcher_stat.walks_allowed, win: @relief_pitcher_stat.win, wins: @relief_pitcher_stat.wins }
    assert_redirected_to relief_pitcher_stat_path(assigns(:relief_pitcher_stat))
  end

  test "should destroy relief_pitcher_stat" do
    assert_difference('ReliefPitcherStat.count', -1) do
      delete :destroy, id: @relief_pitcher_stat
    end

    assert_redirected_to relief_pitcher_stats_path
  end
end
