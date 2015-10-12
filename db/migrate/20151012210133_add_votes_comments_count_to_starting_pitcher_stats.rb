class AddVotesCommentsCountToStartingPitcherStats < ActiveRecord::Migration
  def change
    tables = [:relief_pitcher_stats, :starting_pitcher_stats, :catcher_stats, :first_baseman_stats, :second_baseman_stats, :third_baseman_stats, :shortstop_stats, :left_fielder_stats, :center_fielder_stats, :right_fielder_stats, :designated_hitter_stats, :point_guard_stats, :shooting_guard_stats, :small_forward_stats, :power_forward_stats, :center_stats, :runner_stats, :sprinter_stats, :defensive_end_stats, :defensive_tackle_stats, :defensive_back_stats, :line_backer_stats, :quarterback_stats, :offensive_lineman_stats, :running_back_stats, :wide_receiver_stats, :tight_end_stats, :kicker_stats, :kicker_returner_stats, :goalkeeper_stats, :defender_stats, :midfielder_stats, :forward_stats] 

  
    tables.each do |table_name|
      add_column table_name, :cached_votes_up, :integer, :default => 0
      add_index table_name, :cached_votes_up
      add_column table_name, :comments_count, :integer, :default => 0
      add_index table_name, :comments_count
    end
  end

end
