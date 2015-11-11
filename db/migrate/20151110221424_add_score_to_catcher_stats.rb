class AddScoreToCatcherStats < ActiveRecord::Migration
  def change
    add_column :catcher_stats, :score, :integer
    add_column :center_fielder_stats, :score, :integer
    add_column :center_stats, :score, :integer
    add_column :defender_stats, :score, :integer
    add_column :defensive_back_stats, :score, :integer
    add_column :defensive_end_stats, :score, :integer
    add_column :defensive_tackle_stats, :score, :integer
    add_column :designated_hitter_stats, :score, :integer
    add_column :first_baseman_stats, :score, :integer
    add_column :forward_stats, :score, :integer
    add_column :goalkeeper_stats, :score, :integer
    add_column :kicker_returner_stats, :score, :integer
    add_column :kicker_stats, :score, :integer
    add_column :left_fielder_stats, :score, :integer
    add_column :line_backer_stats, :score, :integer
    add_column :midfielder_stats, :score, :integer
    add_column :offensive_lineman_stats, :score, :integer
    add_column :point_guard_stats, :score, :integer
    add_column :power_forward_stats, :score, :integer
    add_column :quarterback_stats, :score, :integer
    add_column :relief_pitcher_stats, :score, :integer
    add_column :right_fielder_stats, :score, :integer
    add_column :runner_stats, :score, :integer
    add_column :running_back_stats, :score, :integer
    add_column :second_baseman_stats, :score, :integer
    add_column :shooting_guard_stats, :score, :integer
    add_column :shortstop_stats, :score, :integer
    add_column :small_forward_stats, :score, :integer
    add_column :sprinter_stats, :score, :integer
    add_column :starting_pitcher_stats, :score, :integer
    add_column :third_baseman_stats, :score, :integer
    add_column :tight_end_stats, :score, :integer
    add_column :wide_receiver_stats, :score, :integer
    add_column :catcher_stats, :opponent_score, :integer
    add_column :center_fielder_stats, :opponent_score, :integer
    add_column :center_stats, :opponent_score, :integer
    add_column :defender_stats, :opponent_score, :integer
    add_column :defensive_back_stats, :opponent_score, :integer
    add_column :defensive_end_stats, :opponent_score, :integer
    add_column :defensive_tackle_stats, :opponent_score, :integer
    add_column :designated_hitter_stats, :opponent_score, :integer
    add_column :first_baseman_stats, :opponent_score, :integer
    add_column :forward_stats, :opponent_score, :integer
    add_column :goalkeeper_stats, :opponent_score, :integer
    add_column :kicker_returner_stats, :opponent_score, :integer
    add_column :kicker_stats, :opponent_score, :integer
    add_column :left_fielder_stats, :opponent_score, :integer
    add_column :line_backer_stats, :opponent_score, :integer
    add_column :midfielder_stats, :opponent_score, :integer
    add_column :offensive_lineman_stats, :opponent_score, :integer
    add_column :point_guard_stats, :opponent_score, :integer
    add_column :power_forward_stats, :opponent_score, :integer
    add_column :quarterback_stats, :opponent_score, :integer
    add_column :relief_pitcher_stats, :opponent_score, :integer
    add_column :right_fielder_stats, :opponent_score, :integer
    add_column :runner_stats, :opponent_score, :integer
    add_column :running_back_stats, :opponent_score, :integer
    add_column :second_baseman_stats, :opponent_score, :integer
    add_column :shooting_guard_stats, :opponent_score, :integer
    add_column :shortstop_stats, :opponent_score, :integer
    add_column :small_forward_stats, :opponent_score, :integer
    add_column :sprinter_stats, :opponent_score, :integer
    add_column :starting_pitcher_stats, :opponent_score, :integer
    add_column :third_baseman_stats, :opponent_score, :integer
    add_column :tight_end_stats, :opponent_score, :integer
    add_column :wide_receiver_stats, :opponent_score, :integer  
  end
end