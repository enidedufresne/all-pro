require 'test_helper'

class RunnerStatsControllerTest < ActionController::TestCase
  setup do
    @runner_stat = runner_stats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:runner_stats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create runner_stat" do
    assert_difference('RunnerStat.count') do
      post :create, runner_stat: { distance_time: @runner_stat.distance_time, event: @runner_stat.event, loss: @runner_stat.loss, losses: @runner_stat.losses, placed: @runner_stat.placed, position_id: @runner_stat.position_id, position_id: @runner_stat.position_id, position_name: @runner_stat.position_name, races_run: @runner_stat.races_run, shorthand: @runner_stat.shorthand, speed: @runner_stat.speed, sport_id: @runner_stat.sport_id, sport_id: @runner_stat.sport_id, sport_name: @runner_stat.sport_name, stat_id: @runner_stat.stat_id, team_score: @runner_stat.team_score, user_id: @runner_stat.user_id, win: @runner_stat.win, wins: @runner_stat.wins }
    end

    assert_redirected_to runner_stat_path(assigns(:runner_stat))
  end

  test "should show runner_stat" do
    get :show, id: @runner_stat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @runner_stat
    assert_response :success
  end

  test "should update runner_stat" do
    patch :update, id: @runner_stat, runner_stat: { distance_time: @runner_stat.distance_time, event: @runner_stat.event, loss: @runner_stat.loss, losses: @runner_stat.losses, placed: @runner_stat.placed, position_id: @runner_stat.position_id, position_id: @runner_stat.position_id, position_name: @runner_stat.position_name, races_run: @runner_stat.races_run, shorthand: @runner_stat.shorthand, speed: @runner_stat.speed, sport_id: @runner_stat.sport_id, sport_id: @runner_stat.sport_id, sport_name: @runner_stat.sport_name, stat_id: @runner_stat.stat_id, team_score: @runner_stat.team_score, user_id: @runner_stat.user_id, win: @runner_stat.win, wins: @runner_stat.wins }
    assert_redirected_to runner_stat_path(assigns(:runner_stat))
  end

  test "should destroy runner_stat" do
    assert_difference('RunnerStat.count', -1) do
      delete :destroy, id: @runner_stat
    end

    assert_redirected_to runner_stats_path
  end
end
