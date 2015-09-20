require 'test_helper'

class CenterStatsControllerTest < ActionController::TestCase
  setup do
    @center_stat = center_stats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:center_stats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create center_stat" do
    assert_difference('CenterStat.count') do
      post :create, center_stat: { assists: @center_stat.assists, blocks: @center_stat.blocks, event: @center_stat.event, fieldgoal_attemps: @center_stat.fieldgoal_attemps, fieldgoals_made: @center_stat.fieldgoals_made, freethrow_attemps: @center_stat.freethrow_attemps, freethrows_made: @center_stat.freethrows_made, games_played: @center_stat.games_played, games_started: @center_stat.games_started, loss: @center_stat.loss, losses: @center_stat.losses, minutes_played: @center_stat.minutes_played, points: @center_stat.points, position_id: @center_stat.position_id, position_id: @center_stat.position_id, position_name: @center_stat.position_name, rebounds: @center_stat.rebounds, shorthand: @center_stat.shorthand, sport_id: @center_stat.sport_id, sport_id: @center_stat.sport_id, sport_name: @center_stat.sport_name, stat_id: @center_stat.stat_id, steals: @center_stat.steals, threepoint_attemps: @center_stat.threepoint_attemps, threepoints_made: @center_stat.threepoints_made, user_id: @center_stat.user_id, win: @center_stat.win, wins: @center_stat.wins }
    end

    assert_redirected_to center_stat_path(assigns(:center_stat))
  end

  test "should show center_stat" do
    get :show, id: @center_stat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @center_stat
    assert_response :success
  end

  test "should update center_stat" do
    patch :update, id: @center_stat, center_stat: { assists: @center_stat.assists, blocks: @center_stat.blocks, event: @center_stat.event, fieldgoal_attemps: @center_stat.fieldgoal_attemps, fieldgoals_made: @center_stat.fieldgoals_made, freethrow_attemps: @center_stat.freethrow_attemps, freethrows_made: @center_stat.freethrows_made, games_played: @center_stat.games_played, games_started: @center_stat.games_started, loss: @center_stat.loss, losses: @center_stat.losses, minutes_played: @center_stat.minutes_played, points: @center_stat.points, position_id: @center_stat.position_id, position_id: @center_stat.position_id, position_name: @center_stat.position_name, rebounds: @center_stat.rebounds, shorthand: @center_stat.shorthand, sport_id: @center_stat.sport_id, sport_id: @center_stat.sport_id, sport_name: @center_stat.sport_name, stat_id: @center_stat.stat_id, steals: @center_stat.steals, threepoint_attemps: @center_stat.threepoint_attemps, threepoints_made: @center_stat.threepoints_made, user_id: @center_stat.user_id, win: @center_stat.win, wins: @center_stat.wins }
    assert_redirected_to center_stat_path(assigns(:center_stat))
  end

  test "should destroy center_stat" do
    assert_difference('CenterStat.count', -1) do
      delete :destroy, id: @center_stat
    end

    assert_redirected_to center_stats_path
  end
end
