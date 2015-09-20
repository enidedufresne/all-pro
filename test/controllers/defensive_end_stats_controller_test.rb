require 'test_helper'

class DefensiveEndStatsControllerTest < ActionController::TestCase
  setup do
    @defensive_end_stat = defensive_end_stats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:defensive_end_stats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create defensive_end_stat" do
    assert_difference('DefensiveEndStat.count') do
      post :create, defensive_end_stat: { event: @defensive_end_stat.event, fumbles: @defensive_end_stat.fumbles, interception: @defensive_end_stat.interception, loss: @defensive_end_stat.loss, losses: @defensive_end_stat.losses, position_id: @defensive_end_stat.position_id, position_id: @defensive_end_stat.position_id, position_name: @defensive_end_stat.position_name, sacks: @defensive_end_stat.sacks, shorthand: @defensive_end_stat.shorthand, sport_id: @defensive_end_stat.sport_id, sport_id: @defensive_end_stat.sport_id, sport_name: @defensive_end_stat.sport_name, stat_id: @defensive_end_stat.stat_id, tackles: @defensive_end_stat.tackles, user_id: @defensive_end_stat.user_id, win: @defensive_end_stat.win, wins: @defensive_end_stat.wins }
    end

    assert_redirected_to defensive_end_stat_path(assigns(:defensive_end_stat))
  end

  test "should show defensive_end_stat" do
    get :show, id: @defensive_end_stat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @defensive_end_stat
    assert_response :success
  end

  test "should update defensive_end_stat" do
    patch :update, id: @defensive_end_stat, defensive_end_stat: { event: @defensive_end_stat.event, fumbles: @defensive_end_stat.fumbles, interception: @defensive_end_stat.interception, loss: @defensive_end_stat.loss, losses: @defensive_end_stat.losses, position_id: @defensive_end_stat.position_id, position_id: @defensive_end_stat.position_id, position_name: @defensive_end_stat.position_name, sacks: @defensive_end_stat.sacks, shorthand: @defensive_end_stat.shorthand, sport_id: @defensive_end_stat.sport_id, sport_id: @defensive_end_stat.sport_id, sport_name: @defensive_end_stat.sport_name, stat_id: @defensive_end_stat.stat_id, tackles: @defensive_end_stat.tackles, user_id: @defensive_end_stat.user_id, win: @defensive_end_stat.win, wins: @defensive_end_stat.wins }
    assert_redirected_to defensive_end_stat_path(assigns(:defensive_end_stat))
  end

  test "should destroy defensive_end_stat" do
    assert_difference('DefensiveEndStat.count', -1) do
      delete :destroy, id: @defensive_end_stat
    end

    assert_redirected_to defensive_end_stats_path
  end
end
