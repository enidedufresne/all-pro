require 'test_helper'

class WideReceiverStatsControllerTest < ActionController::TestCase
  setup do
    @wide_receiver_stat = wide_receiver_stats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wide_receiver_stats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wide_receiver_stat" do
    assert_difference('WideReceiverStat.count') do
      post :create, wide_receiver_stat: { event: @wide_receiver_stat.event, fumbles: @wide_receiver_stat.fumbles, games_played: @wide_receiver_stat.games_played, loss: @wide_receiver_stat.loss, losses: @wide_receiver_stat.losses, position_id: @wide_receiver_stat.position_id, position_id: @wide_receiver_stat.position_id, position_name: @wide_receiver_stat.position_name, reception_touchdowns: @wide_receiver_stat.reception_touchdowns, reception_yards: @wide_receiver_stat.reception_yards, receptions: @wide_receiver_stat.receptions, shorthand: @wide_receiver_stat.shorthand, sport_id: @wide_receiver_stat.sport_id, sport_id: @wide_receiver_stat.sport_id, sport_name: @wide_receiver_stat.sport_name, stat_id: @wide_receiver_stat.stat_id, user_id: @wide_receiver_stat.user_id, win: @wide_receiver_stat.win, wins: @wide_receiver_stat.wins }
    end

    assert_redirected_to wide_receiver_stat_path(assigns(:wide_receiver_stat))
  end

  test "should show wide_receiver_stat" do
    get :show, id: @wide_receiver_stat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wide_receiver_stat
    assert_response :success
  end

  test "should update wide_receiver_stat" do
    patch :update, id: @wide_receiver_stat, wide_receiver_stat: { event: @wide_receiver_stat.event, fumbles: @wide_receiver_stat.fumbles, games_played: @wide_receiver_stat.games_played, loss: @wide_receiver_stat.loss, losses: @wide_receiver_stat.losses, position_id: @wide_receiver_stat.position_id, position_id: @wide_receiver_stat.position_id, position_name: @wide_receiver_stat.position_name, reception_touchdowns: @wide_receiver_stat.reception_touchdowns, reception_yards: @wide_receiver_stat.reception_yards, receptions: @wide_receiver_stat.receptions, shorthand: @wide_receiver_stat.shorthand, sport_id: @wide_receiver_stat.sport_id, sport_id: @wide_receiver_stat.sport_id, sport_name: @wide_receiver_stat.sport_name, stat_id: @wide_receiver_stat.stat_id, user_id: @wide_receiver_stat.user_id, win: @wide_receiver_stat.win, wins: @wide_receiver_stat.wins }
    assert_redirected_to wide_receiver_stat_path(assigns(:wide_receiver_stat))
  end

  test "should destroy wide_receiver_stat" do
    assert_difference('WideReceiverStat.count', -1) do
      delete :destroy, id: @wide_receiver_stat
    end

    assert_redirected_to wide_receiver_stats_path
  end
end
