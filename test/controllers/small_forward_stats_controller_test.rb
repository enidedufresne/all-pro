require 'test_helper'

class SmallForwardStatsControllerTest < ActionController::TestCase
  setup do
    @small_forward_stat = small_forward_stats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:small_forward_stats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create small_forward_stat" do
    assert_difference('SmallForwardStat.count') do
      post :create, small_forward_stat: { assists: @small_forward_stat.assists, blocks: @small_forward_stat.blocks, event: @small_forward_stat.event, fieldgoal_attemps: @small_forward_stat.fieldgoal_attemps, fieldgoals_made: @small_forward_stat.fieldgoals_made, freethrow_attemps: @small_forward_stat.freethrow_attemps, freethrows_made: @small_forward_stat.freethrows_made, games_played: @small_forward_stat.games_played, games_started: @small_forward_stat.games_started, loss: @small_forward_stat.loss, losses: @small_forward_stat.losses, minutes_played: @small_forward_stat.minutes_played, points: @small_forward_stat.points, position_id: @small_forward_stat.position_id, position_id: @small_forward_stat.position_id, position_name: @small_forward_stat.position_name, rebounds: @small_forward_stat.rebounds, shorthand: @small_forward_stat.shorthand, sport_id: @small_forward_stat.sport_id, sport_id: @small_forward_stat.sport_id, sport_name: @small_forward_stat.sport_name, stat_id: @small_forward_stat.stat_id, steals: @small_forward_stat.steals, threepoint_attemps: @small_forward_stat.threepoint_attemps, threepoints_made: @small_forward_stat.threepoints_made, user_id: @small_forward_stat.user_id, win: @small_forward_stat.win, wins: @small_forward_stat.wins }
    end

    assert_redirected_to small_forward_stat_path(assigns(:small_forward_stat))
  end

  test "should show small_forward_stat" do
    get :show, id: @small_forward_stat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @small_forward_stat
    assert_response :success
  end

  test "should update small_forward_stat" do
    patch :update, id: @small_forward_stat, small_forward_stat: { assists: @small_forward_stat.assists, blocks: @small_forward_stat.blocks, event: @small_forward_stat.event, fieldgoal_attemps: @small_forward_stat.fieldgoal_attemps, fieldgoals_made: @small_forward_stat.fieldgoals_made, freethrow_attemps: @small_forward_stat.freethrow_attemps, freethrows_made: @small_forward_stat.freethrows_made, games_played: @small_forward_stat.games_played, games_started: @small_forward_stat.games_started, loss: @small_forward_stat.loss, losses: @small_forward_stat.losses, minutes_played: @small_forward_stat.minutes_played, points: @small_forward_stat.points, position_id: @small_forward_stat.position_id, position_id: @small_forward_stat.position_id, position_name: @small_forward_stat.position_name, rebounds: @small_forward_stat.rebounds, shorthand: @small_forward_stat.shorthand, sport_id: @small_forward_stat.sport_id, sport_id: @small_forward_stat.sport_id, sport_name: @small_forward_stat.sport_name, stat_id: @small_forward_stat.stat_id, steals: @small_forward_stat.steals, threepoint_attemps: @small_forward_stat.threepoint_attemps, threepoints_made: @small_forward_stat.threepoints_made, user_id: @small_forward_stat.user_id, win: @small_forward_stat.win, wins: @small_forward_stat.wins }
    assert_redirected_to small_forward_stat_path(assigns(:small_forward_stat))
  end

  test "should destroy small_forward_stat" do
    assert_difference('SmallForwardStat.count', -1) do
      delete :destroy, id: @small_forward_stat
    end

    assert_redirected_to small_forward_stats_path
  end
end
