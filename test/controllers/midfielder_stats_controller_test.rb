require 'test_helper'

class MidfielderStatsControllerTest < ActionController::TestCase
  setup do
    @midfielder_stat = midfielder_stats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:midfielder_stats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create midfielder_stat" do
    assert_difference('MidfielderStat.count') do
      post :create, midfielder_stat: { assists: @midfielder_stat.assists, draw: @midfielder_stat.draw, draws: @midfielder_stat.draws, event: @midfielder_stat.event, games_played: @midfielder_stat.games_played, goals: @midfielder_stat.goals, loss: @midfielder_stat.loss, losses: @midfielder_stat.losses, position_id: @midfielder_stat.position_id, position_id: @midfielder_stat.position_id, position_name: @midfielder_stat.position_name, shorthand: @midfielder_stat.shorthand, shots_taken: @midfielder_stat.shots_taken, sport_id: @midfielder_stat.sport_id, sport_id: @midfielder_stat.sport_id, sport_name: @midfielder_stat.sport_name, stat_id: @midfielder_stat.stat_id, user_id: @midfielder_stat.user_id, win: @midfielder_stat.win, wins: @midfielder_stat.wins }
    end

    assert_redirected_to midfielder_stat_path(assigns(:midfielder_stat))
  end

  test "should show midfielder_stat" do
    get :show, id: @midfielder_stat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @midfielder_stat
    assert_response :success
  end

  test "should update midfielder_stat" do
    patch :update, id: @midfielder_stat, midfielder_stat: { assists: @midfielder_stat.assists, draw: @midfielder_stat.draw, draws: @midfielder_stat.draws, event: @midfielder_stat.event, games_played: @midfielder_stat.games_played, goals: @midfielder_stat.goals, loss: @midfielder_stat.loss, losses: @midfielder_stat.losses, position_id: @midfielder_stat.position_id, position_id: @midfielder_stat.position_id, position_name: @midfielder_stat.position_name, shorthand: @midfielder_stat.shorthand, shots_taken: @midfielder_stat.shots_taken, sport_id: @midfielder_stat.sport_id, sport_id: @midfielder_stat.sport_id, sport_name: @midfielder_stat.sport_name, stat_id: @midfielder_stat.stat_id, user_id: @midfielder_stat.user_id, win: @midfielder_stat.win, wins: @midfielder_stat.wins }
    assert_redirected_to midfielder_stat_path(assigns(:midfielder_stat))
  end

  test "should destroy midfielder_stat" do
    assert_difference('MidfielderStat.count', -1) do
      delete :destroy, id: @midfielder_stat
    end

    assert_redirected_to midfielder_stats_path
  end
end
