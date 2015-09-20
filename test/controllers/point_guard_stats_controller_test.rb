require 'test_helper'

class PointGuardStatsControllerTest < ActionController::TestCase
  setup do
    @point_guard_stat = point_guard_stats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:point_guard_stats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create point_guard_stat" do
    assert_difference('PointGuardStat.count') do
      post :create, point_guard_stat: { assists: @point_guard_stat.assists, blocks: @point_guard_stat.blocks, event: @point_guard_stat.event, fieldgoal_attemps: @point_guard_stat.fieldgoal_attemps, fieldgoals_made: @point_guard_stat.fieldgoals_made, freethrow_attemps: @point_guard_stat.freethrow_attemps, freethrows_made: @point_guard_stat.freethrows_made, games_played: @point_guard_stat.games_played, games_started: @point_guard_stat.games_started, loss: @point_guard_stat.loss, losses: @point_guard_stat.losses, minutes_played: @point_guard_stat.minutes_played, points: @point_guard_stat.points, position_id: @point_guard_stat.position_id, position_id: @point_guard_stat.position_id, position_name: @point_guard_stat.position_name, rebounds: @point_guard_stat.rebounds, shorthand: @point_guard_stat.shorthand, sport_id: @point_guard_stat.sport_id, sport_id: @point_guard_stat.sport_id, sport_name: @point_guard_stat.sport_name, stat_id: @point_guard_stat.stat_id, steals: @point_guard_stat.steals, threepoint_attemps: @point_guard_stat.threepoint_attemps, threepoints_made: @point_guard_stat.threepoints_made, user_id: @point_guard_stat.user_id, win: @point_guard_stat.win, wins: @point_guard_stat.wins }
    end

    assert_redirected_to point_guard_stat_path(assigns(:point_guard_stat))
  end

  test "should show point_guard_stat" do
    get :show, id: @point_guard_stat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @point_guard_stat
    assert_response :success
  end

  test "should update point_guard_stat" do
    patch :update, id: @point_guard_stat, point_guard_stat: { assists: @point_guard_stat.assists, blocks: @point_guard_stat.blocks, event: @point_guard_stat.event, fieldgoal_attemps: @point_guard_stat.fieldgoal_attemps, fieldgoals_made: @point_guard_stat.fieldgoals_made, freethrow_attemps: @point_guard_stat.freethrow_attemps, freethrows_made: @point_guard_stat.freethrows_made, games_played: @point_guard_stat.games_played, games_started: @point_guard_stat.games_started, loss: @point_guard_stat.loss, losses: @point_guard_stat.losses, minutes_played: @point_guard_stat.minutes_played, points: @point_guard_stat.points, position_id: @point_guard_stat.position_id, position_id: @point_guard_stat.position_id, position_name: @point_guard_stat.position_name, rebounds: @point_guard_stat.rebounds, shorthand: @point_guard_stat.shorthand, sport_id: @point_guard_stat.sport_id, sport_id: @point_guard_stat.sport_id, sport_name: @point_guard_stat.sport_name, stat_id: @point_guard_stat.stat_id, steals: @point_guard_stat.steals, threepoint_attemps: @point_guard_stat.threepoint_attemps, threepoints_made: @point_guard_stat.threepoints_made, user_id: @point_guard_stat.user_id, win: @point_guard_stat.win, wins: @point_guard_stat.wins }
    assert_redirected_to point_guard_stat_path(assigns(:point_guard_stat))
  end

  test "should destroy point_guard_stat" do
    assert_difference('PointGuardStat.count', -1) do
      delete :destroy, id: @point_guard_stat
    end

    assert_redirected_to point_guard_stats_path
  end
end
