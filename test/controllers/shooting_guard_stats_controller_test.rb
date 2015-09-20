require 'test_helper'

class ShootingGuardStatsControllerTest < ActionController::TestCase
  setup do
    @shooting_guard_stat = shooting_guard_stats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shooting_guard_stats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shooting_guard_stat" do
    assert_difference('ShootingGuardStat.count') do
      post :create, shooting_guard_stat: { assists: @shooting_guard_stat.assists, blocks: @shooting_guard_stat.blocks, event: @shooting_guard_stat.event, fieldgoal_attemps: @shooting_guard_stat.fieldgoal_attemps, fieldgoals_made: @shooting_guard_stat.fieldgoals_made, freethrow_attemps: @shooting_guard_stat.freethrow_attemps, freethrows_made: @shooting_guard_stat.freethrows_made, games_played: @shooting_guard_stat.games_played, games_started: @shooting_guard_stat.games_started, loss: @shooting_guard_stat.loss, losses: @shooting_guard_stat.losses, minutes_played: @shooting_guard_stat.minutes_played, points: @shooting_guard_stat.points, position_id: @shooting_guard_stat.position_id, position_id: @shooting_guard_stat.position_id, position_name: @shooting_guard_stat.position_name, rebounds: @shooting_guard_stat.rebounds, shorthand: @shooting_guard_stat.shorthand, sport_id: @shooting_guard_stat.sport_id, sport_id: @shooting_guard_stat.sport_id, sport_name: @shooting_guard_stat.sport_name, stat_id: @shooting_guard_stat.stat_id, steals: @shooting_guard_stat.steals, threepoint_attemps: @shooting_guard_stat.threepoint_attemps, threepoints_made: @shooting_guard_stat.threepoints_made, user_id: @shooting_guard_stat.user_id, win: @shooting_guard_stat.win, wins: @shooting_guard_stat.wins }
    end

    assert_redirected_to shooting_guard_stat_path(assigns(:shooting_guard_stat))
  end

  test "should show shooting_guard_stat" do
    get :show, id: @shooting_guard_stat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shooting_guard_stat
    assert_response :success
  end

  test "should update shooting_guard_stat" do
    patch :update, id: @shooting_guard_stat, shooting_guard_stat: { assists: @shooting_guard_stat.assists, blocks: @shooting_guard_stat.blocks, event: @shooting_guard_stat.event, fieldgoal_attemps: @shooting_guard_stat.fieldgoal_attemps, fieldgoals_made: @shooting_guard_stat.fieldgoals_made, freethrow_attemps: @shooting_guard_stat.freethrow_attemps, freethrows_made: @shooting_guard_stat.freethrows_made, games_played: @shooting_guard_stat.games_played, games_started: @shooting_guard_stat.games_started, loss: @shooting_guard_stat.loss, losses: @shooting_guard_stat.losses, minutes_played: @shooting_guard_stat.minutes_played, points: @shooting_guard_stat.points, position_id: @shooting_guard_stat.position_id, position_id: @shooting_guard_stat.position_id, position_name: @shooting_guard_stat.position_name, rebounds: @shooting_guard_stat.rebounds, shorthand: @shooting_guard_stat.shorthand, sport_id: @shooting_guard_stat.sport_id, sport_id: @shooting_guard_stat.sport_id, sport_name: @shooting_guard_stat.sport_name, stat_id: @shooting_guard_stat.stat_id, steals: @shooting_guard_stat.steals, threepoint_attemps: @shooting_guard_stat.threepoint_attemps, threepoints_made: @shooting_guard_stat.threepoints_made, user_id: @shooting_guard_stat.user_id, win: @shooting_guard_stat.win, wins: @shooting_guard_stat.wins }
    assert_redirected_to shooting_guard_stat_path(assigns(:shooting_guard_stat))
  end

  test "should destroy shooting_guard_stat" do
    assert_difference('ShootingGuardStat.count', -1) do
      delete :destroy, id: @shooting_guard_stat
    end

    assert_redirected_to shooting_guard_stats_path
  end
end
