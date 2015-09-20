require 'test_helper'

class PowerForwardStatsControllerTest < ActionController::TestCase
  setup do
    @power_forward_stat = power_forward_stats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:power_forward_stats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create power_forward_stat" do
    assert_difference('PowerForwardStat.count') do
      post :create, power_forward_stat: { assists: @power_forward_stat.assists, blocks: @power_forward_stat.blocks, event: @power_forward_stat.event, fieldgoal_attemps: @power_forward_stat.fieldgoal_attemps, fieldgoals_made: @power_forward_stat.fieldgoals_made, freethrow_attemps: @power_forward_stat.freethrow_attemps, freethrows_made: @power_forward_stat.freethrows_made, games_played: @power_forward_stat.games_played, games_started: @power_forward_stat.games_started, loss: @power_forward_stat.loss, losses: @power_forward_stat.losses, minutes_played: @power_forward_stat.minutes_played, points: @power_forward_stat.points, position_id: @power_forward_stat.position_id, position_id: @power_forward_stat.position_id, position_name: @power_forward_stat.position_name, rebounds: @power_forward_stat.rebounds, shorthand: @power_forward_stat.shorthand, sport_id: @power_forward_stat.sport_id, sport_id: @power_forward_stat.sport_id, sport_name: @power_forward_stat.sport_name, stat_id: @power_forward_stat.stat_id, steals: @power_forward_stat.steals, threepoint_attemps: @power_forward_stat.threepoint_attemps, threepoints_made: @power_forward_stat.threepoints_made, user_id: @power_forward_stat.user_id, win: @power_forward_stat.win, wins: @power_forward_stat.wins }
    end

    assert_redirected_to power_forward_stat_path(assigns(:power_forward_stat))
  end

  test "should show power_forward_stat" do
    get :show, id: @power_forward_stat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @power_forward_stat
    assert_response :success
  end

  test "should update power_forward_stat" do
    patch :update, id: @power_forward_stat, power_forward_stat: { assists: @power_forward_stat.assists, blocks: @power_forward_stat.blocks, event: @power_forward_stat.event, fieldgoal_attemps: @power_forward_stat.fieldgoal_attemps, fieldgoals_made: @power_forward_stat.fieldgoals_made, freethrow_attemps: @power_forward_stat.freethrow_attemps, freethrows_made: @power_forward_stat.freethrows_made, games_played: @power_forward_stat.games_played, games_started: @power_forward_stat.games_started, loss: @power_forward_stat.loss, losses: @power_forward_stat.losses, minutes_played: @power_forward_stat.minutes_played, points: @power_forward_stat.points, position_id: @power_forward_stat.position_id, position_id: @power_forward_stat.position_id, position_name: @power_forward_stat.position_name, rebounds: @power_forward_stat.rebounds, shorthand: @power_forward_stat.shorthand, sport_id: @power_forward_stat.sport_id, sport_id: @power_forward_stat.sport_id, sport_name: @power_forward_stat.sport_name, stat_id: @power_forward_stat.stat_id, steals: @power_forward_stat.steals, threepoint_attemps: @power_forward_stat.threepoint_attemps, threepoints_made: @power_forward_stat.threepoints_made, user_id: @power_forward_stat.user_id, win: @power_forward_stat.win, wins: @power_forward_stat.wins }
    assert_redirected_to power_forward_stat_path(assigns(:power_forward_stat))
  end

  test "should destroy power_forward_stat" do
    assert_difference('PowerForwardStat.count', -1) do
      delete :destroy, id: @power_forward_stat
    end

    assert_redirected_to power_forward_stats_path
  end
end
