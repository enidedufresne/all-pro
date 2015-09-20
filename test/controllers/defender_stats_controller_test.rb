require 'test_helper'

class DefenderStatsControllerTest < ActionController::TestCase
  setup do
    @defender_stat = defender_stats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:defender_stats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create defender_stat" do
    assert_difference('DefenderStat.count') do
      post :create, defender_stat: { assists: @defender_stat.assists, draw: @defender_stat.draw, draws: @defender_stat.draws, event: @defender_stat.event, games_played: @defender_stat.games_played, goals: @defender_stat.goals, loss: @defender_stat.loss, losses: @defender_stat.losses, position_id: @defender_stat.position_id, position_id: @defender_stat.position_id, position_name: @defender_stat.position_name, shorthand: @defender_stat.shorthand, shots_taken: @defender_stat.shots_taken, sport_id: @defender_stat.sport_id, sport_id: @defender_stat.sport_id, sport_name: @defender_stat.sport_name, stat_id: @defender_stat.stat_id, user_id: @defender_stat.user_id, win: @defender_stat.win, wins: @defender_stat.wins }
    end

    assert_redirected_to defender_stat_path(assigns(:defender_stat))
  end

  test "should show defender_stat" do
    get :show, id: @defender_stat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @defender_stat
    assert_response :success
  end

  test "should update defender_stat" do
    patch :update, id: @defender_stat, defender_stat: { assists: @defender_stat.assists, draw: @defender_stat.draw, draws: @defender_stat.draws, event: @defender_stat.event, games_played: @defender_stat.games_played, goals: @defender_stat.goals, loss: @defender_stat.loss, losses: @defender_stat.losses, position_id: @defender_stat.position_id, position_id: @defender_stat.position_id, position_name: @defender_stat.position_name, shorthand: @defender_stat.shorthand, shots_taken: @defender_stat.shots_taken, sport_id: @defender_stat.sport_id, sport_id: @defender_stat.sport_id, sport_name: @defender_stat.sport_name, stat_id: @defender_stat.stat_id, user_id: @defender_stat.user_id, win: @defender_stat.win, wins: @defender_stat.wins }
    assert_redirected_to defender_stat_path(assigns(:defender_stat))
  end

  test "should destroy defender_stat" do
    assert_difference('DefenderStat.count', -1) do
      delete :destroy, id: @defender_stat
    end

    assert_redirected_to defender_stats_path
  end
end
