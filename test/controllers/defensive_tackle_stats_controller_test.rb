require 'test_helper'

class DefensiveTackleStatsControllerTest < ActionController::TestCase
  setup do
    @defensive_tackle_stat = defensive_tackle_stats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:defensive_tackle_stats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create defensive_tackle_stat" do
    assert_difference('DefensiveTackleStat.count') do
      post :create, defensive_tackle_stat: { event: @defensive_tackle_stat.event, fumbles: @defensive_tackle_stat.fumbles, interception: @defensive_tackle_stat.interception, loss: @defensive_tackle_stat.loss, losses: @defensive_tackle_stat.losses, position_id: @defensive_tackle_stat.position_id, position_id: @defensive_tackle_stat.position_id, position_name: @defensive_tackle_stat.position_name, sacks: @defensive_tackle_stat.sacks, shorthand: @defensive_tackle_stat.shorthand, sport_id: @defensive_tackle_stat.sport_id, sport_id: @defensive_tackle_stat.sport_id, sport_name: @defensive_tackle_stat.sport_name, stat_id: @defensive_tackle_stat.stat_id, tackles: @defensive_tackle_stat.tackles, user_id: @defensive_tackle_stat.user_id, win: @defensive_tackle_stat.win, wins: @defensive_tackle_stat.wins }
    end

    assert_redirected_to defensive_tackle_stat_path(assigns(:defensive_tackle_stat))
  end

  test "should show defensive_tackle_stat" do
    get :show, id: @defensive_tackle_stat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @defensive_tackle_stat
    assert_response :success
  end

  test "should update defensive_tackle_stat" do
    patch :update, id: @defensive_tackle_stat, defensive_tackle_stat: { event: @defensive_tackle_stat.event, fumbles: @defensive_tackle_stat.fumbles, interception: @defensive_tackle_stat.interception, loss: @defensive_tackle_stat.loss, losses: @defensive_tackle_stat.losses, position_id: @defensive_tackle_stat.position_id, position_id: @defensive_tackle_stat.position_id, position_name: @defensive_tackle_stat.position_name, sacks: @defensive_tackle_stat.sacks, shorthand: @defensive_tackle_stat.shorthand, sport_id: @defensive_tackle_stat.sport_id, sport_id: @defensive_tackle_stat.sport_id, sport_name: @defensive_tackle_stat.sport_name, stat_id: @defensive_tackle_stat.stat_id, tackles: @defensive_tackle_stat.tackles, user_id: @defensive_tackle_stat.user_id, win: @defensive_tackle_stat.win, wins: @defensive_tackle_stat.wins }
    assert_redirected_to defensive_tackle_stat_path(assigns(:defensive_tackle_stat))
  end

  test "should destroy defensive_tackle_stat" do
    assert_difference('DefensiveTackleStat.count', -1) do
      delete :destroy, id: @defensive_tackle_stat
    end

    assert_redirected_to defensive_tackle_stats_path
  end
end
