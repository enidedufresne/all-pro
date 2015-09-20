require 'test_helper'

class DefensiveBackStatsControllerTest < ActionController::TestCase
  setup do
    @defensive_back_stat = defensive_back_stats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:defensive_back_stats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create defensive_back_stat" do
    assert_difference('DefensiveBackStat.count') do
      post :create, defensive_back_stat: { event: @defensive_back_stat.event, fumbles: @defensive_back_stat.fumbles, interception: @defensive_back_stat.interception, loss: @defensive_back_stat.loss, losses: @defensive_back_stat.losses, position_id: @defensive_back_stat.position_id, position_id: @defensive_back_stat.position_id, position_name: @defensive_back_stat.position_name, sacks: @defensive_back_stat.sacks, shorthand: @defensive_back_stat.shorthand, sport_id: @defensive_back_stat.sport_id, sport_id: @defensive_back_stat.sport_id, sport_name: @defensive_back_stat.sport_name, stat_id: @defensive_back_stat.stat_id, tackles: @defensive_back_stat.tackles, user_id: @defensive_back_stat.user_id, win: @defensive_back_stat.win, wins: @defensive_back_stat.wins }
    end

    assert_redirected_to defensive_back_stat_path(assigns(:defensive_back_stat))
  end

  test "should show defensive_back_stat" do
    get :show, id: @defensive_back_stat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @defensive_back_stat
    assert_response :success
  end

  test "should update defensive_back_stat" do
    patch :update, id: @defensive_back_stat, defensive_back_stat: { event: @defensive_back_stat.event, fumbles: @defensive_back_stat.fumbles, interception: @defensive_back_stat.interception, loss: @defensive_back_stat.loss, losses: @defensive_back_stat.losses, position_id: @defensive_back_stat.position_id, position_id: @defensive_back_stat.position_id, position_name: @defensive_back_stat.position_name, sacks: @defensive_back_stat.sacks, shorthand: @defensive_back_stat.shorthand, sport_id: @defensive_back_stat.sport_id, sport_id: @defensive_back_stat.sport_id, sport_name: @defensive_back_stat.sport_name, stat_id: @defensive_back_stat.stat_id, tackles: @defensive_back_stat.tackles, user_id: @defensive_back_stat.user_id, win: @defensive_back_stat.win, wins: @defensive_back_stat.wins }
    assert_redirected_to defensive_back_stat_path(assigns(:defensive_back_stat))
  end

  test "should destroy defensive_back_stat" do
    assert_difference('DefensiveBackStat.count', -1) do
      delete :destroy, id: @defensive_back_stat
    end

    assert_redirected_to defensive_back_stats_path
  end
end
