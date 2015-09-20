require 'test_helper'

class GoalkeeperStatsControllerTest < ActionController::TestCase
  setup do
    @goalkeeper_stat = goalkeeper_stats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:goalkeeper_stats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create goalkeeper_stat" do
    assert_difference('GoalkeeperStat.count') do
      post :create, goalkeeper_stat: { draw: @goalkeeper_stat.draw, draws: @goalkeeper_stat.draws, event: @goalkeeper_stat.event, games_played: @goalkeeper_stat.games_played, loss: @goalkeeper_stat.loss, losses: @goalkeeper_stat.losses, position_id: @goalkeeper_stat.position_id, position_id: @goalkeeper_stat.position_id, position_name: @goalkeeper_stat.position_name, saves: @goalkeeper_stat.saves, shorthand: @goalkeeper_stat.shorthand, shots_faced: @goalkeeper_stat.shots_faced, sport_id: @goalkeeper_stat.sport_id, sport_id: @goalkeeper_stat.sport_id, sport_name: @goalkeeper_stat.sport_name, stat_id: @goalkeeper_stat.stat_id, user_id: @goalkeeper_stat.user_id, win: @goalkeeper_stat.win, wins: @goalkeeper_stat.wins }
    end

    assert_redirected_to goalkeeper_stat_path(assigns(:goalkeeper_stat))
  end

  test "should show goalkeeper_stat" do
    get :show, id: @goalkeeper_stat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @goalkeeper_stat
    assert_response :success
  end

  test "should update goalkeeper_stat" do
    patch :update, id: @goalkeeper_stat, goalkeeper_stat: { draw: @goalkeeper_stat.draw, draws: @goalkeeper_stat.draws, event: @goalkeeper_stat.event, games_played: @goalkeeper_stat.games_played, loss: @goalkeeper_stat.loss, losses: @goalkeeper_stat.losses, position_id: @goalkeeper_stat.position_id, position_id: @goalkeeper_stat.position_id, position_name: @goalkeeper_stat.position_name, saves: @goalkeeper_stat.saves, shorthand: @goalkeeper_stat.shorthand, shots_faced: @goalkeeper_stat.shots_faced, sport_id: @goalkeeper_stat.sport_id, sport_id: @goalkeeper_stat.sport_id, sport_name: @goalkeeper_stat.sport_name, stat_id: @goalkeeper_stat.stat_id, user_id: @goalkeeper_stat.user_id, win: @goalkeeper_stat.win, wins: @goalkeeper_stat.wins }
    assert_redirected_to goalkeeper_stat_path(assigns(:goalkeeper_stat))
  end

  test "should destroy goalkeeper_stat" do
    assert_difference('GoalkeeperStat.count', -1) do
      delete :destroy, id: @goalkeeper_stat
    end

    assert_redirected_to goalkeeper_stats_path
  end
end
