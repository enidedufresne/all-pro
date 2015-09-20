require 'test_helper'

class ForwardStatsControllerTest < ActionController::TestCase
  setup do
    @forward_stat = forward_stats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:forward_stats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create forward_stat" do
    assert_difference('ForwardStat.count') do
      post :create, forward_stat: { assists: @forward_stat.assists, draw: @forward_stat.draw, draws: @forward_stat.draws, event: @forward_stat.event, games_played: @forward_stat.games_played, goals: @forward_stat.goals, loss: @forward_stat.loss, losses: @forward_stat.losses, position_id: @forward_stat.position_id, position_id: @forward_stat.position_id, position_name: @forward_stat.position_name, shorthand: @forward_stat.shorthand, shots_taken: @forward_stat.shots_taken, sport_id: @forward_stat.sport_id, sport_id: @forward_stat.sport_id, sport_name: @forward_stat.sport_name, stat_id: @forward_stat.stat_id, user_id: @forward_stat.user_id, win: @forward_stat.win, wins: @forward_stat.wins }
    end

    assert_redirected_to forward_stat_path(assigns(:forward_stat))
  end

  test "should show forward_stat" do
    get :show, id: @forward_stat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @forward_stat
    assert_response :success
  end

  test "should update forward_stat" do
    patch :update, id: @forward_stat, forward_stat: { assists: @forward_stat.assists, draw: @forward_stat.draw, draws: @forward_stat.draws, event: @forward_stat.event, games_played: @forward_stat.games_played, goals: @forward_stat.goals, loss: @forward_stat.loss, losses: @forward_stat.losses, position_id: @forward_stat.position_id, position_id: @forward_stat.position_id, position_name: @forward_stat.position_name, shorthand: @forward_stat.shorthand, shots_taken: @forward_stat.shots_taken, sport_id: @forward_stat.sport_id, sport_id: @forward_stat.sport_id, sport_name: @forward_stat.sport_name, stat_id: @forward_stat.stat_id, user_id: @forward_stat.user_id, win: @forward_stat.win, wins: @forward_stat.wins }
    assert_redirected_to forward_stat_path(assigns(:forward_stat))
  end

  test "should destroy forward_stat" do
    assert_difference('ForwardStat.count', -1) do
      delete :destroy, id: @forward_stat
    end

    assert_redirected_to forward_stats_path
  end
end
