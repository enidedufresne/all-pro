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

ActiveRecord::Schema.define(version: 20150920024139) do

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

  create_table "sports", force: :cascade do |t|
    t.string   "name"
    t.string   "text"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "sports", ["user_id"], name: "index_sports_on_user_id"

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

end
