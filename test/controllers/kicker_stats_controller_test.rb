require 'test_helper'

class KickerStatsControllerTest < ActionController::TestCase
  setup do
    @kicker_stat = kicker_stats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kicker_stats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kicker_stat" do
    assert_difference('KickerStat.count') do
      post :create, kicker_stat: { event: @kicker_stat.event, field_goals: @kicker_stat.field_goals, games_played: @kicker_stat.games_played, loss: @kicker_stat.loss, losses: @kicker_stat.losses, position_id: @kicker_stat.position_id, position_id: @kicker_stat.position_id, position_name: @kicker_stat.position_name, shorthand: @kicker_stat.shorthand, sport_id: @kicker_stat.sport_id, sport_id: @kicker_stat.sport_id, sport_name: @kicker_stat.sport_name, stat_id: @kicker_stat.stat_id, user_id: @kicker_stat.user_id, win: @kicker_stat.win, wins: @kicker_stat.wins }
    end

    assert_redirected_to kicker_stat_path(assigns(:kicker_stat))
  end

  test "should show kicker_stat" do
    get :show, id: @kicker_stat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @kicker_stat
    assert_response :success
  end

  test "should update kicker_stat" do
    patch :update, id: @kicker_stat, kicker_stat: { event: @kicker_stat.event, field_goals: @kicker_stat.field_goals, games_played: @kicker_stat.games_played, loss: @kicker_stat.loss, losses: @kicker_stat.losses, position_id: @kicker_stat.position_id, position_id: @kicker_stat.position_id, position_name: @kicker_stat.position_name, shorthand: @kicker_stat.shorthand, sport_id: @kicker_stat.sport_id, sport_id: @kicker_stat.sport_id, sport_name: @kicker_stat.sport_name, stat_id: @kicker_stat.stat_id, user_id: @kicker_stat.user_id, win: @kicker_stat.win, wins: @kicker_stat.wins }
    assert_redirected_to kicker_stat_path(assigns(:kicker_stat))
  end

  test "should destroy kicker_stat" do
    assert_difference('KickerStat.count', -1) do
      delete :destroy, id: @kicker_stat
    end

    assert_redirected_to kicker_stats_path
  end
end
