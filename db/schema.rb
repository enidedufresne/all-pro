# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150920033130) do

  create_table "activities", force: :cascade do |t|
    t.integer  "trackable_id"
    t.string   "trackable_type", limit: 255
    t.integer  "owner_id"
    t.string   "owner_type",     limit: 255
    t.string   "key",            limit: 255
    t.text     "parameters"
    t.integer  "recipient_id"
    t.string   "recipient_type", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "activities", ["owner_id", "owner_type"], name: "index_activities_on_owner_id_and_owner_type"
  add_index "activities", ["recipient_id", "recipient_type"], name: "index_activities_on_recipient_id_and_recipient_type"
  add_index "activities", ["trackable_id", "trackable_type"], name: "index_activities_on_trackable_id_and_trackable_type"

  create_table "catcher_stats", force: :cascade do |t|
    t.string   "position_name"
    t.string   "shorthand"
    t.integer  "sport_id"
    t.integer  "position_id"
    t.string   "sport_name"
    t.string   "event"
    t.integer  "games_started"
    t.integer  "games_played"
    t.boolean  "win"
    t.boolean  "loss"
    t.integer  "wins"
    t.integer  "losses"
    t.integer  "plate_appearances"
    t.integer  "at_bats"
    t.integer  "hits"
    t.integer  "runs_scored"
    t.integer  "runs_batted_in"
    t.integer  "walks"
    t.integer  "strike_outs"
    t.integer  "stolen_bases"
    t.integer  "doubles"
    t.integer  "triples"
    t.integer  "home_runs"
    t.integer  "user_id"
    t.integer  "stat_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "catcher_stats", ["position_id"], name: "index_catcher_stats_on_position_id"
  add_index "catcher_stats", ["sport_id"], name: "index_catcher_stats_on_sport_id"
  add_index "catcher_stats", ["stat_id"], name: "index_catcher_stats_on_stat_id"
  add_index "catcher_stats", ["user_id"], name: "index_catcher_stats_on_user_id"

  create_table "center_fielder_stats", force: :cascade do |t|
    t.string   "position_name"
    t.string   "shorthand"
    t.integer  "sport_id"
    t.integer  "position_id"
    t.string   "sport_name"
    t.string   "event"
    t.integer  "games_started"
    t.integer  "games_played"
    t.boolean  "win"
    t.boolean  "loss"
    t.integer  "wins"
    t.integer  "losses"
    t.integer  "plate_appearances"
    t.integer  "at_bats"
    t.integer  "hits"
    t.integer  "runs_scored"
    t.integer  "runs_batted_in"
    t.integer  "walks"
    t.integer  "strike_outs"
    t.integer  "stolen_bases"
    t.integer  "doubles"
    t.integer  "triples"
    t.integer  "home_runs"
    t.integer  "user_id"
    t.integer  "stat_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "center_fielder_stats", ["position_id"], name: "index_center_fielder_stats_on_position_id"
  add_index "center_fielder_stats", ["sport_id"], name: "index_center_fielder_stats_on_sport_id"
  add_index "center_fielder_stats", ["stat_id"], name: "index_center_fielder_stats_on_stat_id"
  add_index "center_fielder_stats", ["user_id"], name: "index_center_fielder_stats_on_user_id"

  create_table "center_stats", force: :cascade do |t|
    t.string   "position_name"
    t.string   "shorthand"
    t.integer  "sport_id"
    t.integer  "position_id"
    t.string   "sport_name"
    t.string   "event"
    t.integer  "games_started"
    t.integer  "games_played"
    t.boolean  "win"
    t.boolean  "loss"
    t.integer  "wins"
    t.integer  "losses"
    t.integer  "minutes_played"
    t.integer  "fieldgoals_made"
    t.integer  "fieldgoal_attemps"
    t.integer  "threepoints_made"
    t.integer  "threepoint_attemps"
    t.integer  "freethrows_made"
    t.integer  "freethrow_attemps"
    t.integer  "rebounds"
    t.integer  "assists"
    t.integer  "steals"
    t.integer  "blocks"
    t.integer  "points"
    t.integer  "user_id"
    t.integer  "stat_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "center_stats", ["position_id"], name: "index_center_stats_on_position_id"
  add_index "center_stats", ["sport_id"], name: "index_center_stats_on_sport_id"
  add_index "center_stats", ["stat_id"], name: "index_center_stats_on_stat_id"
  add_index "center_stats", ["user_id"], name: "index_center_stats_on_user_id"

  create_table "comments", force: :cascade do |t|
    t.string   "title",            limit: 50,  default: ""
    t.text     "comment"
    t.integer  "commentable_id"
    t.string   "commentable_type", limit: 255
    t.integer  "user_id"
    t.string   "role",             limit: 255, default: "comments"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "comment_html"
  end

  add_index "comments", ["commentable_id"], name: "index_comments_on_commentable_id"
  add_index "comments", ["commentable_type"], name: "index_comments_on_commentable_type"
  add_index "comments", ["user_id"], name: "index_comments_on_user_id"

  create_table "defensive_back_stats", force: :cascade do |t|
    t.string   "position_name"
    t.string   "shorthand"
    t.integer  "sport_id"
    t.integer  "position_id"
    t.string   "sport_name"
    t.string   "event"
    t.boolean  "win"
    t.boolean  "loss"
    t.integer  "wins"
    t.integer  "losses"
    t.integer  "tackles"
    t.integer  "sacks"
    t.integer  "fumbles"
    t.integer  "interception"
    t.integer  "user_id"
    t.integer  "stat_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "defensive_back_stats", ["position_id"], name: "index_defensive_back_stats_on_position_id"
  add_index "defensive_back_stats", ["sport_id"], name: "index_defensive_back_stats_on_sport_id"
  add_index "defensive_back_stats", ["stat_id"], name: "index_defensive_back_stats_on_stat_id"
  add_index "defensive_back_stats", ["user_id"], name: "index_defensive_back_stats_on_user_id"

  create_table "defensive_end_stats", force: :cascade do |t|
    t.string   "position_name"
    t.string   "shorthand"
    t.integer  "sport_id"
    t.integer  "position_id"
    t.string   "sport_name"
    t.string   "event"
    t.boolean  "win"
    t.boolean  "loss"
    t.integer  "wins"
    t.integer  "losses"
    t.integer  "tackles"
    t.integer  "sacks"
    t.integer  "fumbles"
    t.integer  "interception"
    t.integer  "user_id"
    t.integer  "stat_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "defensive_end_stats", ["position_id"], name: "index_defensive_end_stats_on_position_id"
  add_index "defensive_end_stats", ["sport_id"], name: "index_defensive_end_stats_on_sport_id"
  add_index "defensive_end_stats", ["stat_id"], name: "index_defensive_end_stats_on_stat_id"
  add_index "defensive_end_stats", ["user_id"], name: "index_defensive_end_stats_on_user_id"

  create_table "defensive_tackle_stats", force: :cascade do |t|
    t.string   "position_name"
    t.string   "shorthand"
    t.integer  "sport_id"
    t.integer  "position_id"
    t.string   "sport_name"
    t.string   "event"
    t.boolean  "win"
    t.boolean  "loss"
    t.integer  "wins"
    t.integer  "losses"
    t.integer  "tackles"
    t.integer  "sacks"
    t.integer  "fumbles"
    t.integer  "interception"
    t.integer  "user_id"
    t.integer  "stat_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "defensive_tackle_stats", ["position_id"], name: "index_defensive_tackle_stats_on_position_id"
  add_index "defensive_tackle_stats", ["sport_id"], name: "index_defensive_tackle_stats_on_sport_id"
  add_index "defensive_tackle_stats", ["stat_id"], name: "index_defensive_tackle_stats_on_stat_id"
  add_index "defensive_tackle_stats", ["user_id"], name: "index_defensive_tackle_stats_on_user_id"

  create_table "designated_hitter_stats", force: :cascade do |t|
    t.string   "position_name"
    t.string   "shorthand"
    t.integer  "sport_id"
    t.integer  "position_id"
    t.string   "sport_name"
    t.string   "event"
    t.integer  "games_started"
    t.integer  "games_played"
    t.boolean  "win"
    t.boolean  "loss"
    t.integer  "wins"
    t.integer  "losses"
    t.integer  "plate_appearances"
    t.integer  "at_bats"
    t.integer  "hits"
    t.integer  "runs_scored"
    t.integer  "runs_batted_in"
    t.integer  "walks"
    t.integer  "strike_outs"
    t.integer  "stolen_bases"
    t.integer  "doubles"
    t.integer  "triples"
    t.integer  "home_runs"
    t.integer  "user_id"
    t.integer  "stat_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "designated_hitter_stats", ["position_id"], name: "index_designated_hitter_stats_on_position_id"
  add_index "designated_hitter_stats", ["sport_id"], name: "index_designated_hitter_stats_on_sport_id"
  add_index "designated_hitter_stats", ["stat_id"], name: "index_designated_hitter_stats_on_stat_id"
  add_index "designated_hitter_stats", ["user_id"], name: "index_designated_hitter_stats_on_user_id"

  create_table "events", force: :cascade do |t|
    t.string   "name",            limit: 255
    t.datetime "when"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "cached_votes_up",             default: 0
    t.integer  "comments_count",              default: 0
  end

  add_index "events", ["cached_votes_up"], name: "index_events_on_cached_votes_up"
  add_index "events", ["comments_count"], name: "index_events_on_comments_count"
  add_index "events", ["user_id"], name: "index_events_on_user_id"

  create_table "first_baseman_stats", force: :cascade do |t|
    t.string   "position_name"
    t.string   "shorthand"
    t.integer  "sport_id"
    t.integer  "position_id"
    t.string   "sport_name"
    t.string   "event"
    t.integer  "games_started"
    t.integer  "games_played"
    t.boolean  "win"
    t.boolean  "loss"
    t.integer  "wins"
    t.integer  "losses"
    t.integer  "plate_appearances"
    t.integer  "at_bats"
    t.integer  "hits"
    t.integer  "runs_scored"
    t.integer  "runs_batted_in"
    t.integer  "walks"
    t.integer  "strike_outs"
    t.integer  "stolen_bases"
    t.integer  "doubles"
    t.integer  "triples"
    t.integer  "home_runs"
    t.integer  "user_id"
    t.integer  "stat_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "first_baseman_stats", ["position_id"], name: "index_first_baseman_stats_on_position_id"
  add_index "first_baseman_stats", ["sport_id"], name: "index_first_baseman_stats_on_sport_id"
  add_index "first_baseman_stats", ["stat_id"], name: "index_first_baseman_stats_on_stat_id"
  add_index "first_baseman_stats", ["user_id"], name: "index_first_baseman_stats_on_user_id"

  create_table "follows", force: :cascade do |t|
    t.integer  "followable_id",                               null: false
    t.string   "followable_type", limit: 255,                 null: false
    t.integer  "follower_id",                                 null: false
    t.string   "follower_type",   limit: 255,                 null: false
    t.boolean  "blocked",                     default: false, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "follows", ["followable_id", "followable_type"], name: "fk_followables"
  add_index "follows", ["follower_id", "follower_type"], name: "fk_follows"

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string   "slug",           limit: 255, null: false
    t.integer  "sluggable_id",               null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope",          limit: 255
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
  add_index "friendly_id_slugs", ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
  add_index "friendly_id_slugs", ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id"
  add_index "friendly_id_slugs", ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type"

  create_table "goalkeeper_stats", force: :cascade do |t|
    t.string   "position_name"
    t.string   "shorthand"
    t.integer  "sport_id"
    t.integer  "position_id"
    t.string   "sport_name"
    t.string   "event"
    t.integer  "games_played"
    t.boolean  "win"
    t.boolean  "loss"
    t.boolean  "draw"
    t.integer  "wins"
    t.integer  "losses"
    t.integer  "draws"
    t.integer  "saves"
    t.integer  "shots_faced"
    t.integer  "user_id"
    t.integer  "stat_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "goalkeeper_stats", ["position_id"], name: "index_goalkeeper_stats_on_position_id"
  add_index "goalkeeper_stats", ["sport_id"], name: "index_goalkeeper_stats_on_sport_id"
  add_index "goalkeeper_stats", ["stat_id"], name: "index_goalkeeper_stats_on_stat_id"
  add_index "goalkeeper_stats", ["user_id"], name: "index_goalkeeper_stats_on_user_id"

  create_table "kicker_returner_stats", force: :cascade do |t|
    t.string   "position_name"
    t.string   "shorthand"
    t.integer  "sport_id"
    t.integer  "position_id"
    t.string   "sport_name"
    t.string   "event"
    t.integer  "games_played"
    t.boolean  "win"
    t.boolean  "loss"
    t.integer  "wins"
    t.integer  "losses"
    t.integer  "kickreturns"
    t.integer  "kickreturn_yards"
    t.integer  "kickreturn_touchdowns"
    t.integer  "user_id"
    t.integer  "stat_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "kicker_returner_stats", ["position_id"], name: "index_kicker_returner_stats_on_position_id"
  add_index "kicker_returner_stats", ["sport_id"], name: "index_kicker_returner_stats_on_sport_id"
  add_index "kicker_returner_stats", ["stat_id"], name: "index_kicker_returner_stats_on_stat_id"
  add_index "kicker_returner_stats", ["user_id"], name: "index_kicker_returner_stats_on_user_id"

  create_table "kicker_stats", force: :cascade do |t|
    t.string   "position_name"
    t.string   "shorthand"
    t.integer  "sport_id"
    t.integer  "position_id"
    t.string   "sport_name"
    t.string   "event"
    t.integer  "games_played"
    t.boolean  "win"
    t.boolean  "loss"
    t.integer  "wins"
    t.integer  "losses"
    t.integer  "field_goals"
    t.integer  "user_id"
    t.integer  "stat_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "kicker_stats", ["position_id"], name: "index_kicker_stats_on_position_id"
  add_index "kicker_stats", ["sport_id"], name: "index_kicker_stats_on_sport_id"
  add_index "kicker_stats", ["stat_id"], name: "index_kicker_stats_on_stat_id"
  add_index "kicker_stats", ["user_id"], name: "index_kicker_stats_on_user_id"

  create_table "left_fielder_stats", force: :cascade do |t|
    t.string   "position_name"
    t.string   "shorthand"
    t.integer  "sport_id"
    t.integer  "position_id"
    t.string   "sport_name"
    t.string   "event"
    t.integer  "games_started"
    t.integer  "games_played"
    t.boolean  "win"
    t.boolean  "loss"
    t.integer  "wins"
    t.integer  "losses"
    t.integer  "plate_appearances"
    t.integer  "at_bats"
    t.integer  "hits"
    t.integer  "runs_scored"
    t.integer  "runs_batted_in"
    t.integer  "walks"
    t.integer  "strike_outs"
    t.integer  "stolen_bases"
    t.integer  "doubles"
    t.integer  "triples"
    t.integer  "home_runs"
    t.integer  "user_id"
    t.integer  "stat_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "left_fielder_stats", ["position_id"], name: "index_left_fielder_stats_on_position_id"
  add_index "left_fielder_stats", ["sport_id"], name: "index_left_fielder_stats_on_sport_id"
  add_index "left_fielder_stats", ["stat_id"], name: "index_left_fielder_stats_on_stat_id"
  add_index "left_fielder_stats", ["user_id"], name: "index_left_fielder_stats_on_user_id"

  create_table "line_backer_stats", force: :cascade do |t|
    t.string   "position_name"
    t.string   "shorthand"
    t.integer  "sport_id"
    t.integer  "position_id"
    t.string   "sport_name"
    t.string   "event"
    t.boolean  "win"
    t.boolean  "loss"
    t.integer  "wins"
    t.integer  "losses"
    t.integer  "tackles"
    t.integer  "sacks"
    t.integer  "fumbles"
    t.integer  "interception"
    t.integer  "user_id"
    t.integer  "stat_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "line_backer_stats", ["position_id"], name: "index_line_backer_stats_on_position_id"
  add_index "line_backer_stats", ["sport_id"], name: "index_line_backer_stats_on_sport_id"
  add_index "line_backer_stats", ["stat_id"], name: "index_line_backer_stats_on_stat_id"
  add_index "line_backer_stats", ["user_id"], name: "index_line_backer_stats_on_user_id"

  create_table "offensive_lineman_stats", force: :cascade do |t|
    t.string   "position_name"
    t.string   "shorthand"
    t.integer  "sport_id"
    t.integer  "position_id"
    t.string   "sport_name"
    t.string   "event"
    t.integer  "games_played"
    t.boolean  "win"
    t.boolean  "loss"
    t.integer  "wins"
    t.integer  "losses"
    t.integer  "pancakes"
    t.integer  "user_id"
    t.integer  "stat_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "offensive_lineman_stats", ["position_id"], name: "index_offensive_lineman_stats_on_position_id"
  add_index "offensive_lineman_stats", ["sport_id"], name: "index_offensive_lineman_stats_on_sport_id"
  add_index "offensive_lineman_stats", ["stat_id"], name: "index_offensive_lineman_stats_on_stat_id"
  add_index "offensive_lineman_stats", ["user_id"], name: "index_offensive_lineman_stats_on_user_id"

  create_table "point_guard_stats", force: :cascade do |t|
    t.string   "position_name"
    t.string   "shorthand"
    t.integer  "sport_id"
    t.integer  "position_id"
    t.string   "sport_name"
    t.string   "event"
    t.integer  "games_started"
    t.integer  "games_played"
    t.boolean  "win"
    t.boolean  "loss"
    t.integer  "wins"
    t.integer  "losses"
    t.integer  "minutes_played"
    t.integer  "fieldgoals_made"
    t.integer  "fieldgoal_attemps"
    t.integer  "threepoints_made"
    t.integer  "threepoint_attemps"
    t.integer  "freethrows_made"
    t.integer  "freethrow_attemps"
    t.integer  "rebounds"
    t.integer  "assists"
    t.integer  "steals"
    t.integer  "blocks"
    t.integer  "points"
    t.integer  "user_id"
    t.integer  "stat_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "point_guard_stats", ["position_id"], name: "index_point_guard_stats_on_position_id"
  add_index "point_guard_stats", ["sport_id"], name: "index_point_guard_stats_on_sport_id"
  add_index "point_guard_stats", ["stat_id"], name: "index_point_guard_stats_on_stat_id"
  add_index "point_guard_stats", ["user_id"], name: "index_point_guard_stats_on_user_id"

  create_table "positions", force: :cascade do |t|
    t.string   "position_name"
    t.string   "shorthand"
    t.boolean  "offensive"
    t.integer  "sport_id"
    t.integer  "position_id"
    t.integer  "user_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "positions", ["sport_id"], name: "index_positions_on_sport_id"
  add_index "positions", ["user_id"], name: "index_positions_on_user_id"

  create_table "posts", force: :cascade do |t|
    t.text     "content",                                 null: false
    t.integer  "user_id"
    t.string   "attachment",      limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "cached_votes_up",             default: 0
    t.integer  "comments_count",              default: 0
    t.text     "content_html"
  end

  add_index "posts", ["cached_votes_up"], name: "index_posts_on_cached_votes_up"
  add_index "posts", ["comments_count"], name: "index_posts_on_comments_count"
  add_index "posts", ["user_id"], name: "index_posts_on_user_id"

  create_table "power_forward_stats", force: :cascade do |t|
    t.string   "position_name"
    t.string   "shorthand"
    t.integer  "sport_id"
    t.integer  "position_id"
    t.string   "sport_name"
    t.string   "event"
    t.integer  "games_started"
    t.integer  "games_played"
    t.boolean  "win"
    t.boolean  "loss"
    t.integer  "wins"
    t.integer  "losses"
    t.integer  "minutes_played"
    t.integer  "fieldgoals_made"
    t.integer  "fieldgoal_attemps"
    t.integer  "threepoints_made"
    t.integer  "threepoint_attemps"
    t.integer  "freethrows_made"
    t.integer  "freethrow_attemps"
    t.integer  "rebounds"
    t.integer  "assists"
    t.integer  "steals"
    t.integer  "blocks"
    t.integer  "points"
    t.integer  "user_id"
    t.integer  "stat_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "power_forward_stats", ["position_id"], name: "index_power_forward_stats_on_position_id"
  add_index "power_forward_stats", ["sport_id"], name: "index_power_forward_stats_on_sport_id"
  add_index "power_forward_stats", ["stat_id"], name: "index_power_forward_stats_on_stat_id"
  add_index "power_forward_stats", ["user_id"], name: "index_power_forward_stats_on_user_id"

  create_table "quarterback_stats", force: :cascade do |t|
    t.string   "position_name"
    t.string   "shorthand"
    t.integer  "sport_id"
    t.integer  "position_id"
    t.string   "sport_name"
    t.string   "event"
    t.integer  "games_played"
    t.boolean  "win"
    t.boolean  "loss"
    t.integer  "wins"
    t.integer  "losses"
    t.integer  "pass_completions"
    t.integer  "pass_attempts"
    t.integer  "passing_yards"
    t.integer  "passing_touchdowns"
    t.integer  "rushing_attempts"
    t.integer  "rushing_yards"
    t.integer  "rushing_touchdowns"
    t.integer  "fumbles"
    t.integer  "interception"
    t.integer  "user_id"
    t.integer  "stat_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "quarterback_stats", ["position_id"], name: "index_quarterback_stats_on_position_id"
  add_index "quarterback_stats", ["sport_id"], name: "index_quarterback_stats_on_sport_id"
  add_index "quarterback_stats", ["stat_id"], name: "index_quarterback_stats_on_stat_id"
  add_index "quarterback_stats", ["user_id"], name: "index_quarterback_stats_on_user_id"

  create_table "relief_pitcher_stats", force: :cascade do |t|
    t.string   "position_name"
    t.string   "shorthand"
    t.integer  "sport_id"
    t.integer  "position_id"
    t.string   "sport_name"
    t.string   "event"
    t.integer  "games_started"
    t.integer  "games_played"
    t.boolean  "win"
    t.boolean  "loss"
    t.integer  "wins"
    t.integer  "losses"
    t.boolean  "pitcher_win"
    t.boolean  "pitcher_loss"
    t.integer  "pitcher_wins"
    t.integer  "pitcher_losses"
    t.boolean  "pitcher_no_decision"
    t.integer  "pitcher_no_decisions"
    t.integer  "pitcher_saves"
    t.integer  "innings_pitched"
    t.integer  "hits_allowed"
    t.integer  "runs_allowed"
    t.integer  "strikeouts"
    t.integer  "walks_allowed"
    t.integer  "user_id"
    t.integer  "stat_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "relief_pitcher_stats", ["position_id"], name: "index_relief_pitcher_stats_on_position_id"
  add_index "relief_pitcher_stats", ["sport_id"], name: "index_relief_pitcher_stats_on_sport_id"
  add_index "relief_pitcher_stats", ["stat_id"], name: "index_relief_pitcher_stats_on_stat_id"
  add_index "relief_pitcher_stats", ["user_id"], name: "index_relief_pitcher_stats_on_user_id"

  create_table "right_fielder_stats", force: :cascade do |t|
    t.string   "position_name"
    t.string   "shorthand"
    t.integer  "sport_id"
    t.integer  "position_id"
    t.string   "sport_name"
    t.string   "event"
    t.integer  "games_started"
    t.integer  "games_played"
    t.boolean  "win"
    t.boolean  "loss"
    t.integer  "wins"
    t.integer  "losses"
    t.integer  "plate_appearances"
    t.integer  "at_bats"
    t.integer  "hits"
    t.integer  "runs_scored"
    t.integer  "runs_batted_in"
    t.integer  "walks"
    t.integer  "strike_outs"
    t.integer  "stolen_bases"
    t.integer  "doubles"
    t.integer  "triples"
    t.integer  "home_runs"
    t.integer  "user_id"
    t.integer  "stat_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "right_fielder_stats", ["position_id"], name: "index_right_fielder_stats_on_position_id"
  add_index "right_fielder_stats", ["sport_id"], name: "index_right_fielder_stats_on_sport_id"
  add_index "right_fielder_stats", ["stat_id"], name: "index_right_fielder_stats_on_stat_id"
  add_index "right_fielder_stats", ["user_id"], name: "index_right_fielder_stats_on_user_id"

  create_table "runner_stats", force: :cascade do |t|
    t.string   "position_name"
    t.string   "shorthand"
    t.integer  "sport_id"
    t.integer  "position_id"
    t.string   "sport_name"
    t.string   "event"
    t.integer  "races_run"
    t.boolean  "win"
    t.boolean  "loss"
    t.integer  "wins"
    t.integer  "losses"
    t.integer  "team_score"
    t.integer  "distance_time"
    t.integer  "placed"
    t.integer  "speed"
    t.integer  "user_id"
    t.integer  "stat_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "runner_stats", ["position_id"], name: "index_runner_stats_on_position_id"
  add_index "runner_stats", ["sport_id"], name: "index_runner_stats_on_sport_id"
  add_index "runner_stats", ["stat_id"], name: "index_runner_stats_on_stat_id"
  add_index "runner_stats", ["user_id"], name: "index_runner_stats_on_user_id"

  create_table "running_back_stats", force: :cascade do |t|
    t.string   "position_name"
    t.string   "shorthand"
    t.integer  "sport_id"
    t.integer  "position_id"
    t.string   "sport_name"
    t.string   "event"
    t.integer  "games_played"
    t.boolean  "win"
    t.boolean  "loss"
    t.integer  "wins"
    t.integer  "losses"
    t.integer  "rushing_attempts"
    t.integer  "rushing_yards"
    t.integer  "rushing_touchdowns"
    t.integer  "receptions"
    t.integer  "reception_yards"
    t.integer  "reception_touchdowns"
    t.integer  "fumbles"
    t.integer  "user_id"
    t.integer  "stat_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "running_back_stats", ["position_id"], name: "index_running_back_stats_on_position_id"
  add_index "running_back_stats", ["sport_id"], name: "index_running_back_stats_on_sport_id"
  add_index "running_back_stats", ["stat_id"], name: "index_running_back_stats_on_stat_id"
  add_index "running_back_stats", ["user_id"], name: "index_running_back_stats_on_user_id"

  create_table "second_baseman_stats", force: :cascade do |t|
    t.string   "position_name"
    t.string   "shorthand"
    t.integer  "sport_id"
    t.integer  "position_id"
    t.string   "sport_name"
    t.string   "event"
    t.integer  "games_started"
    t.integer  "games_played"
    t.boolean  "win"
    t.boolean  "loss"
    t.integer  "wins"
    t.integer  "losses"
    t.integer  "plate_appearances"
    t.integer  "at_bats"
    t.integer  "hits"
    t.integer  "runs_scored"
    t.integer  "runs_batted_in"
    t.integer  "walks"
    t.integer  "strike_outs"
    t.integer  "stolen_bases"
    t.integer  "doubles"
    t.integer  "triples"
    t.integer  "home_runs"
    t.integer  "user_id"
    t.integer  "stat_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "second_baseman_stats", ["position_id"], name: "index_second_baseman_stats_on_position_id"
  add_index "second_baseman_stats", ["sport_id"], name: "index_second_baseman_stats_on_sport_id"
  add_index "second_baseman_stats", ["stat_id"], name: "index_second_baseman_stats_on_stat_id"
  add_index "second_baseman_stats", ["user_id"], name: "index_second_baseman_stats_on_user_id"

  create_table "shooting_guard_stats", force: :cascade do |t|
    t.string   "position_name"
    t.string   "shorthand"
    t.integer  "sport_id"
    t.integer  "position_id"
    t.string   "sport_name"
    t.string   "event"
    t.integer  "games_started"
    t.integer  "games_played"
    t.boolean  "win"
    t.boolean  "loss"
    t.integer  "wins"
    t.integer  "losses"
    t.integer  "minutes_played"
    t.integer  "fieldgoals_made"
    t.integer  "fieldgoal_attemps"
    t.integer  "threepoints_made"
    t.integer  "threepoint_attemps"
    t.integer  "freethrows_made"
    t.integer  "freethrow_attemps"
    t.integer  "rebounds"
    t.integer  "assists"
    t.integer  "steals"
    t.integer  "blocks"
    t.integer  "points"
    t.integer  "user_id"
    t.integer  "stat_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "shooting_guard_stats", ["position_id"], name: "index_shooting_guard_stats_on_position_id"
  add_index "shooting_guard_stats", ["sport_id"], name: "index_shooting_guard_stats_on_sport_id"
  add_index "shooting_guard_stats", ["stat_id"], name: "index_shooting_guard_stats_on_stat_id"
  add_index "shooting_guard_stats", ["user_id"], name: "index_shooting_guard_stats_on_user_id"

  create_table "shortstop_stats", force: :cascade do |t|
    t.string   "position_name"
    t.string   "shorthand"
    t.integer  "sport_id"
    t.integer  "position_id"
    t.string   "sport_name"
    t.string   "event"
    t.integer  "games_started"
    t.integer  "games_played"
    t.boolean  "win"
    t.boolean  "loss"
    t.integer  "wins"
    t.integer  "losses"
    t.integer  "plate_appearances"
    t.integer  "at_bats"
    t.integer  "hits"
    t.integer  "runs_scored"
    t.integer  "runs_batted_in"
    t.integer  "walks"
    t.integer  "strike_outs"
    t.integer  "stolen_bases"
    t.integer  "doubles"
    t.integer  "triples"
    t.integer  "home_runs"
    t.integer  "user_id"
    t.integer  "stat_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "shortstop_stats", ["position_id"], name: "index_shortstop_stats_on_position_id"
  add_index "shortstop_stats", ["sport_id"], name: "index_shortstop_stats_on_sport_id"
  add_index "shortstop_stats", ["stat_id"], name: "index_shortstop_stats_on_stat_id"
  add_index "shortstop_stats", ["user_id"], name: "index_shortstop_stats_on_user_id"

  create_table "small_forward_stats", force: :cascade do |t|
    t.string   "position_name"
    t.string   "shorthand"
    t.integer  "sport_id"
    t.integer  "position_id"
    t.string   "sport_name"
    t.string   "event"
    t.integer  "games_started"
    t.integer  "games_played"
    t.boolean  "win"
    t.boolean  "loss"
    t.integer  "wins"
    t.integer  "losses"
    t.integer  "minutes_played"
    t.integer  "fieldgoals_made"
    t.integer  "fieldgoal_attemps"
    t.integer  "threepoints_made"
    t.integer  "threepoint_attemps"
    t.integer  "freethrows_made"
    t.integer  "freethrow_attemps"
    t.integer  "rebounds"
    t.integer  "assists"
    t.integer  "steals"
    t.integer  "blocks"
    t.integer  "points"
    t.integer  "user_id"
    t.integer  "stat_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "small_forward_stats", ["position_id"], name: "index_small_forward_stats_on_position_id"
  add_index "small_forward_stats", ["sport_id"], name: "index_small_forward_stats_on_sport_id"
  add_index "small_forward_stats", ["stat_id"], name: "index_small_forward_stats_on_stat_id"
  add_index "small_forward_stats", ["user_id"], name: "index_small_forward_stats_on_user_id"

  create_table "sports", force: :cascade do |t|
    t.string   "name"
    t.string   "text"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "sports", ["user_id"], name: "index_sports_on_user_id"

  create_table "sprinter_stats", force: :cascade do |t|
    t.string   "position_name"
    t.string   "shorthand"
    t.integer  "sport_id"
    t.integer  "position_id"
    t.string   "sport_name"
    t.string   "event"
    t.integer  "races_run"
    t.integer  "other_events"
    t.boolean  "win"
    t.boolean  "loss"
    t.integer  "wins"
    t.integer  "losses"
    t.integer  "team_score"
    t.integer  "distance_time"
    t.integer  "placed"
    t.integer  "speed"
    t.integer  "user_id"
    t.integer  "stat_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "sprinter_stats", ["position_id"], name: "index_sprinter_stats_on_position_id"
  add_index "sprinter_stats", ["sport_id"], name: "index_sprinter_stats_on_sport_id"
  add_index "sprinter_stats", ["stat_id"], name: "index_sprinter_stats_on_stat_id"
  add_index "sprinter_stats", ["user_id"], name: "index_sprinter_stats_on_user_id"

  create_table "starting_pitcher_stats", force: :cascade do |t|
    t.string   "position_name"
    t.string   "shorthand"
    t.integer  "sport_id"
    t.integer  "position_id"
    t.string   "sport_name"
    t.string   "event"
    t.integer  "games_started"
    t.integer  "games_played"
    t.boolean  "win"
    t.boolean  "loss"
    t.integer  "wins"
    t.integer  "losses"
    t.boolean  "pitcher_win"
    t.boolean  "pitcher_loss"
    t.integer  "pitcher_wins"
    t.integer  "pitcher_losses"
    t.boolean  "pitcher_no_decision"
    t.integer  "pitcher_no_decisions"
    t.integer  "pitcher_saves"
    t.integer  "innings_pitched"
    t.integer  "hits_allowed"
    t.integer  "runs_allowed"
    t.integer  "strikeouts"
    t.integer  "walks_allowed"
    t.integer  "user_id"
    t.integer  "stat_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "starting_pitcher_stats", ["position_id"], name: "index_starting_pitcher_stats_on_position_id"
  add_index "starting_pitcher_stats", ["sport_id"], name: "index_starting_pitcher_stats_on_sport_id"
  add_index "starting_pitcher_stats", ["stat_id"], name: "index_starting_pitcher_stats_on_stat_id"
  add_index "starting_pitcher_stats", ["user_id"], name: "index_starting_pitcher_stats_on_user_id"

  create_table "stats", force: :cascade do |t|
    t.string   "stat_name"
    t.integer  "position_id"
    t.integer  "sport_id"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "stats", ["position_id"], name: "index_stats_on_position_id"
  add_index "stats", ["sport_id"], name: "index_stats_on_sport_id"
  add_index "stats", ["user_id"], name: "index_stats_on_user_id"

  create_table "third_baseman_stats", force: :cascade do |t|
    t.string   "position_name"
    t.string   "shorthand"
    t.integer  "sport_id"
    t.integer  "position_id"
    t.string   "sport_name"
    t.string   "event"
    t.integer  "games_started"
    t.integer  "games_played"
    t.boolean  "win"
    t.boolean  "loss"
    t.integer  "wins"
    t.integer  "losses"
    t.integer  "plate_appearances"
    t.integer  "at_bats"
    t.integer  "hits"
    t.integer  "runs_scored"
    t.integer  "runs_batted_in"
    t.integer  "walks"
    t.integer  "strike_outs"
    t.integer  "stolen_bases"
    t.integer  "doubles"
    t.integer  "triples"
    t.integer  "home_runs"
    t.integer  "user_id"
    t.integer  "stat_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "third_baseman_stats", ["position_id"], name: "index_third_baseman_stats_on_position_id"
  add_index "third_baseman_stats", ["sport_id"], name: "index_third_baseman_stats_on_sport_id"
  add_index "third_baseman_stats", ["stat_id"], name: "index_third_baseman_stats_on_stat_id"
  add_index "third_baseman_stats", ["user_id"], name: "index_third_baseman_stats_on_user_id"

  create_table "tight_end_stats", force: :cascade do |t|
    t.string   "position_name"
    t.string   "shorthand"
    t.integer  "sport_id"
    t.integer  "position_id"
    t.string   "sport_name"
    t.string   "event"
    t.integer  "games_played"
    t.boolean  "win"
    t.boolean  "loss"
    t.integer  "wins"
    t.integer  "losses"
    t.integer  "receptions"
    t.integer  "reception_yards"
    t.integer  "reception_touchdowns"
    t.integer  "pancakes"
    t.integer  "user_id"
    t.integer  "stat_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "tight_end_stats", ["position_id"], name: "index_tight_end_stats_on_position_id"
  add_index "tight_end_stats", ["sport_id"], name: "index_tight_end_stats_on_sport_id"
  add_index "tight_end_stats", ["stat_id"], name: "index_tight_end_stats_on_stat_id"
  add_index "tight_end_stats", ["user_id"], name: "index_tight_end_stats_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "name",                   limit: 255, default: "",     null: false
    t.string   "email",                  limit: 255, default: "",     null: false
    t.string   "encrypted_password",     limit: 255, default: "",     null: false
    t.string   "about",                  limit: 255
    t.string   "avatar",                 limit: 255
    t.string   "cover",                  limit: 255
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                      default: 0,      null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.string   "confirmation_token",     limit: 255
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.datetime "created_at",                                          null: false
    t.datetime "updated_at",                                          null: false
    t.string   "sex",                    limit: 255, default: "male", null: false
    t.string   "location",               limit: 255
    t.date     "dob"
    t.string   "phone_number",           limit: 255
    t.integer  "posts_count",                        default: 0,      null: false
    t.string   "slug",                   limit: 255
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  add_index "users", ["slug"], name: "index_users_on_slug", unique: true

  create_table "votes", force: :cascade do |t|
    t.integer  "votable_id"
    t.string   "votable_type", limit: 255
    t.integer  "voter_id"
    t.string   "voter_type",   limit: 255
    t.boolean  "vote_flag"
    t.string   "vote_scope",   limit: 255
    t.integer  "vote_weight"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "votes", ["votable_id", "votable_type", "vote_scope"], name: "index_votes_on_votable_id_and_votable_type_and_vote_scope"
  add_index "votes", ["voter_id", "voter_type", "vote_scope"], name: "index_votes_on_voter_id_and_voter_type_and_vote_scope"

  create_table "wide_receiver_stats", force: :cascade do |t|
    t.string   "position_name"
    t.string   "shorthand"
    t.integer  "sport_id"
    t.integer  "position_id"
    t.string   "sport_name"
    t.string   "event"
    t.integer  "games_played"
    t.boolean  "win"
    t.boolean  "loss"
    t.integer  "wins"
    t.integer  "losses"
    t.integer  "receptions"
    t.integer  "reception_yards"
    t.integer  "reception_touchdowns"
    t.integer  "fumbles"
    t.integer  "user_id"
    t.integer  "stat_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "wide_receiver_stats", ["position_id"], name: "index_wide_receiver_stats_on_position_id"
  add_index "wide_receiver_stats", ["sport_id"], name: "index_wide_receiver_stats_on_sport_id"
  add_index "wide_receiver_stats", ["stat_id"], name: "index_wide_receiver_stats_on_stat_id"
  add_index "wide_receiver_stats", ["user_id"], name: "index_wide_receiver_stats_on_user_id"

end
