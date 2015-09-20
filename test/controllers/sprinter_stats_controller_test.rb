require 'test_helper'

class SprinterStatsControllerTest < ActionController::TestCase
  setup do
    @sprinter_stat = sprinter_stats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sprinter_stats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sprinter_stat" do
    assert_difference('SprinterStat.count') do
      post :create, sprinter_stat: { distance_time: @sprinter_stat.distance_time, event: @sprinter_stat.event, loss: @sprinter_stat.loss, losses: @sprinter_stat.losses, other_events: @sprinter_stat.other_events, placed: @sprinter_stat.placed, position_id: @sprinter_stat.position_id, position_id: @sprinter_stat.position_id, position_name: @sprinter_stat.position_name, races_run: @sprinter_stat.races_run, shorthand: @sprinter_stat.shorthand, speed: @sprinter_stat.speed, sport_id: @sprinter_stat.sport_id, sport_id: @sprinter_stat.sport_id, sport_name: @sprinter_stat.sport_name, stat_id: @sprinter_stat.stat_id, team_score: @sprinter_stat.team_score, user_id: @sprinter_stat.user_id, win: @sprinter_stat.win, wins: @sprinter_stat.wins }
    end

    assert_redirected_to sprinter_stat_path(assigns(:sprinter_stat))
  end

  test "should show sprinter_stat" do
    get :show, id: @sprinter_stat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sprinter_stat
    assert_response :success
  end

  test "should update sprinter_stat" do
    patch :update, id: @sprinter_stat, sprinter_stat: { distance_time: @sprinter_stat.distance_time, event: @sprinter_stat.event, loss: @sprinter_stat.loss, losses: @sprinter_stat.losses, other_events: @sprinter_stat.other_events, placed: @sprinter_stat.placed, position_id: @sprinter_stat.position_id, position_id: @sprinter_stat.position_id, position_name: @sprinter_stat.position_name, races_run: @sprinter_stat.races_run, shorthand: @sprinter_stat.shorthand, speed: @sprinter_stat.speed, sport_id: @sprinter_stat.sport_id, sport_id: @sprinter_stat.sport_id, sport_name: @sprinter_stat.sport_name, stat_id: @sprinter_stat.stat_id, team_score: @sprinter_stat.team_score, user_id: @sprinter_stat.user_id, win: @sprinter_stat.win, wins: @sprinter_stat.wins }
    assert_redirected_to sprinter_stat_path(assigns(:sprinter_stat))
  end

  test "should destroy sprinter_stat" do
    assert_difference('SprinterStat.count', -1) do
      delete :destroy, id: @sprinter_stat
    end

    assert_redirected_to sprinter_stats_path
  end
end
