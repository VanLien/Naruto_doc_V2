-file("src/mod/role/role_data.erl", 1).

-module(role_data).

-lager_records([{role_misc,
		 [reg_zero_time, self_charge, combat_watch_pid,
		  mail_posting, is_do_online, gm_attr, dun_auto_num,
		  dun_auto_lose, invite_code_list, return_code_list,
		  need_captcha]},
		{friend_req,
		 [id, name, sex, career, face_id, lev, power, time,
		  avatar_bid, face_update_time, face_file]},
		{role_friend,
		 [id, name, gname, gid, sex, career, face_id, lev, power,
		  login_time, login_out_time, is_online, main_partner_id,
		  partner_bid, partner_lev, partner_star, is_home,
		  avatar_bid, vip_lev, dun_id, soft, face_update_time,
		  face_file]},
		{friend, [myid, fid, intimacy, is_draw, ctime]},
		{friend_tmp,
		 [fid, intimacy, ctime, name, gname, gid, sex, career,
		  face_id, avatar_bid, lev, vip_lev, power, login_time,
		  login_out_time, is_online, is_cross, main_partner_id,
		  partner_bid, partner_lev, partner_star, is_awake,
		  is_used, is_present, is_draw, dun_id, is_fanse, is_home,
		  soft, face_update_time, face_file]},
		{m_friend, [ver, is_open, list]},
		{g_mem_red_packet,
		 [id, rid, name, face_id, avatar_bid, post, type, num,
		  max_num, val, max_val, list, mems, start_time, end_time,
		  msg_id, face_update_time, face_file]},
		{guild_data, [lev, exp, num, maintain]},
		{guild_position, [id, name, limit]},
		{g_merge,
		 [gid, gname, gid2, gname2, role_id, rname, end_time,
		  gold]},
		{guild_rank,
		 [id, name, lev, exp, leader_name, leader_id,
		  leader_face, leader_lev, members_num, members_max,
		  apply_lev, apply_type, create_time, power, index,
		  leader_avatar_bid, leader_look_id,
		  leader_face_update_time, leader_face_file,
		  apply_power]},
		{guild_apply,
		 [gid, id, pid, name, face, lev, power, post, vip_lev,
		  online, apply_time, face_update_time, face_file]},
		{guild_member,
		 [ver, id, pid, name, face, lev, sex, power, post,
		  vip_lev, online, join_time, login_time, donate,
		  day_donate, avatar_bid, red_packet_num,
		  red_packet_price, red_packet_time, red_packet_recv_num,
		  red_packet_recv_time, active_lev, day_donate_type,
		  day_donate_time, day_dun_time, day_war_time, look_id,
		  face_update_time, face_file]},
		{guild_war_box,
		 [order, rid, sid, name, item_id, item_num]},
		{guild_cache, []},
		{guild,
		 [ver, id, name, lev, exp, day_exp, pid, leader_name,
		  leader_id, members, members_num, members_max, next_id,
		  sign, apply_lev, apply_type, recruit_num, cache, sync,
		  create_time, power, rename_time, lock_time, donate_exp,
		  red_packet, guild_war_box_end_time, guild_war_relust,
		  guild_war_box, guild_war_sign, day_var,
		  vice_leader_mail, normal_mail, vitality, apply_power]},
		{guild_bag,
		 [ver, id, pid, name, post, lev, join_time, quit_time,
		  send_time, send_num, recv_num, true_quit_time,
		  quit_post]},
		{guild_log_info,
		 [id, guild_id, type, time, role_id, role_name, msg]},
		{guild_log, [key, list]}, {s_timer, [ref, timers]},
		{rtimer, [ref, key, timers]},
		{timer,
		 [id, timeout, m, f, a, times, next_tick, set_time]},
		{assets,
		 [ver, exp, coin, silver_coin, gold, red_gold, gold_acc,
		  vip_exp, energy, energy_max, energy_time, activity,
		  guild, arena_cent, hero_soul, feat_point, triple_rebate,
		  friend_point, boss_point, star_hun, star_point,
		  arena_guesscent, sky_coin, hero_exp, recruit_hero,
		  recruithigh_hero, expedition_medal, elite_coin,
		  holy_eqm_coin, skin_debris, cluster_coin, home_coin,
		  hallow_refine, cluster_guess_cent, feather_exchange,
		  brave_symbol, peak_guess_cent, hero_soul_coin,
		  acc_recruit_hero, predict_point]},
		{vip_effect_data, [name, val]},
		{vip_data,
		 [lev, gold, price, old_price, items, ext_reward]},
		{m_vip, [ver, lev, lev_reward, tired_charge]},
		{login,
		 [login_time, logout_time, prev_logout_time,
		  prev_login_time, log_login_time]},
		{r_evt_partner_holy_eqpt, [cache]},
		{r_evt_guild_war_rank, [cache]},
		{r_evt_guild_dun_rank, [cache]},
		{r_evt_arena_like_number, [cache]},
		{r_evt_arena_firstrank_end, [cache]},
		{r_evt_arena_elite_end_rankget, [cache]},
		{r_evt_arena_elite_end_lev, [cache]},
		{r_evt_arena_elite_end_levget, [cache]},
		{r_evt_sky_ladder_end_rank, [cache]},
		{r_evt_championships_end_rank, [cache]},
		{r_evt_arena_cluster_rank, [cache]},
		{r_evt_arena_cluster_rankget, [cache]},
		{r_evt_friend_cluster_add, [cache]},
		{r_evt_friend_add, [cache]},
		{r_evt_room_liked, [cache]},
		{r_evt_hallows_rank, [cache]},
		{r_evt_build_guild, [cache]},
		{r_evt_join_guild, [cache]},
		{r_evt_first_partnerskill_learn, [cache]},
		{r_evt_partner_eqpt_item, [cache]},
		{r_evt_primus_first_fight_rank, [rank, cache]},
		{r_evt_primus_first_fight_pass, [rank, cache]},
		{r_evt_partner_get, [cache]},
		{r_evt_role_register_days, [cache]},
		{r_evt_expedition_pass, [cache]},
		{r_evt_endless_pass_light_dark, [round, cache]},
		{r_evt_endless_pass_wind, [round, cache]},
		{r_evt_endless_pass_fire, [round, cache]},
		{r_evt_endless_pass_water, [round, cache]},
		{r_evt_endless_pass, [round, cache]},
		{r_evt_star_tower_floor, [cache]},
		{r_evt_first_recruit, [cache]},
		{r_evt_hero_compose, [cache]},
		{r_evt_role_lev, [cache]},
		{r_evt_power, [power, cache]},
		{evt_guild_break_skill, []},
		{evt_holiday_arena_team_combat_win_count, []},
		{evt_holiday_arena_team_combat_count, []},
		{evt_holiday_arena_team_join_team, []},
		{evt_holiday_arena_team_lev_up, []},
		{evt_enter_holiday_arena_team, []}, {evt_skin, []},
		{evt_nian_fight_gold_monster, []},
		{evt_nian_firework, []}, {evt_nian_red_packet, []},
		{evt_nian_fight_big_monster, []},
		{evt_nian_fight_monster, []}, {evt_enter_nian, []},
		{evt_planes_kill_guard, []}, {evt_planes_pass, []},
		{evt_enter_secret_pass, [dun_id]},
		{evt_enter_secret_treasure, []},
		{evt_enter_secret_loan, []},
		{evt_enter_secret_reply, []},
		{evt_enter_secret_kill_monster2, [count]},
		{evt_enter_secret_kill_monster, []},
		{evt_enter_secret_dun, []},
		{evt_monopoly_kill_boss, []},
		{evt_monopoly_dungeon, []}, {evt_monopoly_dice, [type]},
		{evt_monopoly_develop, [stage_id, develop]},
		{evt_enter_monopoly, []}, {evt_sprite_tree, []},
		{evt_sprite_set_pos, []},
		{evt_sprite_hatch_expedite, []}, {evt_sprite_hatch, []},
		{evt_sprite_compound, []},
		{evt_guild_secret_area_combat, [count]},
		{evt_arena_team_double_kill, []},
		{evt_arena_team_defense_success, [count]},
		{evt_arena_team_join, [count]},
		{evt_arena_team_season_found_team, [count]},
		{evt_arena_team_last, [count]},
		{evt_arena_team_first, [count]},
		{evt_arena_team_season_one, [count]},
		{evt_arena_team_season_five, [count]},
		{evt_arena_team_two_win, [count]},
		{evt_arena_team_leader_join, [count]},
		{evt_arena_team_win, [count]},
		{evt_arena_use_sprite, [bids, result]},
		{evt_appoint_sprite_compound, [bids]},
		{evt_appoint_sprite, [bids]},
		{evt_recruit_lottery, [count]},
		{evt_sprite_lottery, [count]},
		{evt_elite_recruit_info, [partner_infos]},
		{evt_elite_recruit, [count]},
		{evt_normal_recruit, [count]},
		{evt_donate_sweet_score, [count]},
		{evt_use_petard, [count]}, {evt_petard_score, [count]},
		{evt_petard_send_red_packet, [count]},
		{evt_petard_red_packet, [count]},
		{evt_petard_firework, [count]},
		{evt_petard_meteor, [count]}, {evt_get_gold, [count]},
		{evt_get_friend_point, [count]},
		{evt_arena_cluster_champion_bet, [count]},
		{evt_get_hook_count, [count]},
		{evt_recruit_convert, [count]},
		{evt_partner_dungeon_stone_win, [count]},
		{evt_element_temple_win, [count]},
		{evt_dun_heaven_win, [count]},
		{evt_arena_elite_combat_count, [count]},
		{evt_holy_eqm_ref, [count]},
		{evt_holy_eqm_lottery, [count]},
		{evt_mystery_mall_buy, [count]},
		{evt_add_friend, [count]},
		{evt_term_beigns_boss, [count]},
		{evt_term_beigns_paper, [count]},
		{evt_term_beigns_win_order, [difficulty]},
		{evt_term_beigns_order, [count]},
		{evt_resonate_levup, []}, {evt_extract_award, []},
		{evt_extract_start, []}, {evt_get_furniture, [num]},
		{evt_travel_time, [time]}, {evt_get_speciality, []},
		{evt_cluster_champion_join, []},
		{evt_cluster_champion_sub_count, []},
		{evt_hallows_refine, [lev]}, {evt_mine_owned, []},
		{evt_mine_combat, []}, {evt_mine_buy_miner, []},
		{evt_mine_save_defense, []},
		{evt_enter_adventure_mine, []},
		{evt_home_pet_set_items, []}, {evt_home_soft, [soft]},
		{evt_rename_home, []}, {evt_gain_home_coin, []},
		{evt_worship, [type]}, {evt_visit_home, []},
		{evt_enter_home, []}, {evt_first_enter_home, []},
		{evt_partnerskill_learn, [lev]},
		{evt_combat_balance, []},
		{evt_arena_cluster_end_rank, [rank]},
		{evt_arena_cluster_win, []},
		{evt_dun_heaven_perfectpass, [chapter_id]},
		{evt_combat_over,
		 [hurt_statistics_a, curt_statistics_a, combat_type,
		  continue_hurt, anti_kill_num, halo_kill_num,
		  revive_info, dodge_count, max_fire_num,
		  sprite_kill_num]},
		{evt_combat_pvp_over,
		 [round, atk_power, def_power, halo_dizzy_num, result,
		  hp_info, max_num_diff, kill_info, dizzy_info]},
		{evt_element_temple_end_rank, [rank]},
		{evt_element_temple_pass, [round]},
		{evt_replay_hall_watch, []}, {evt_honor_share, []},
		{evt_grow_share, []}, {evt_replay_share, []},
		{evt_replay_hall_like, []},
		{evt_recruit_trial_partner, [bid]},
		{evt_pass_holiday_boss_new, [id, difficulty]},
		{evt_fight_holiday_boss_new, []},
		{evt_holiday_boss_get_score, []},
		{evt_pass_holiday_boss, [id]},
		{evt_fight_holiday_boss, []},
		{evt_holiday_break_egg, [count]},
		{evt_arena_elite_end_rank, [rank]},
		{evt_arena_elite_end_lev, [lev, score]},
		{evt_arena_elite_champion, [combat_type]},
		{evt_arena_elite_win_count, []},
		{evt_arena_elite_cont_win, [count]},
		{evt_arena_elite_rank, [rank]},
		{evt_sky_ladder_win, []},
		{evt_sky_ladder_end_rank, [rank]},
		{evt_sky_ladder_rank, [rank]},
		{evt_cluster_championships_end_rank, [rank]},
		{evt_championships_end_rank, [rank]},
		{evt_championships_32, []},
		{evt_cluster_championships_takepartin, []},
		{evt_peak_championships_takepartin, []},
		{evt_peak_championships_end_rank, [rank]},
		{evt_peak_championships_bet_cont_win_season, [count]},
		{evt_cluster_championships_bet_cont_win_day, [count]},
		{evt_championships_bet_cont_win_day, [count]},
		{evt_championships_bet_cont_win, [count]},
		{evt_championships_bet_win, []},
		{evt_championships_bet, []},
		{evt_cross_server_ladder, []},
		{evt_adventure_floor_count, []},
		{evt_holiday_make_dumplings, [count]},
		{evt_expedition_fight_count, [id, count]},
		{evt_artifact_compose_quality, [id]},
		{evt_artifact_recast_skills, [skills]},
		{evt_artifact_recast, []},
		{evt_hallows_step_intensify, []},
		{evt_adventure_item_expend_count, [id]},
		{evt_partner_add_new, [star]},
		{evt_equipment_compound, [count]},
		{evt_adventure_trade_count, []},
		{evt_adventure_treasure_open, []},
		{evt_partner_advance, []},
		{evt_adventure_boss_fight_count, []},
		{evt_artifact_compose, []}, {evt_primus_fight, []},
		{evt_expedition_open_box, []},
		{evt_expedition_fight,
		 [round, difficulty, count, is_rank]},
		{evt_eqm_compound, []}, {evt_mystery_buy, [type]},
		{evt_guild_war, []}, {evt_guild_quest_lev, [lev]},
		{evt_hook_time, []},
		{evt_loss_hallows_essence, [count]},
		{evt_dial, [count]}, {evt_guild_dun_buff, []},
		{evt_exchange, [type]}, {evt_guild_skill, []},
		{evt_partner_stone_all_lv, []}, {evt_stone_all_lv, []},
		{evt_hallows_step, []}, {evt_hallows_all_step, []},
		{evt_hallows_activate, [id]}, {evt_escort_fight, []},
		{evt_escort_enter, []},
		{evt_guild_war_join_and_win, []},
		{evt_guild_war_top, [rank]}, {evt_guild_war_join, []},
		{evt_shipping_refresh, []}, {evt_shipping, [quality]},
		{evt_dungeon_stone_fight, [type]},
		{evt_valentine_boss, []}, {evt_endless_appoint, []},
		{evt_endless_pass_light_dark, [round]},
		{evt_endless_pass_wind, [round]},
		{evt_endless_pass_fire, [round]},
		{evt_endless_pass_water, [round]},
		{evt_endless_pass, [round]}, {evt_endless_fight, []},
		{evt_guild_redpacket_best, []},
		{evt_guild_red_packet_reward, [type]},
		{evt_guild_mem_red_packet_price,
		 [type, max_val, assets]},
		{evt_guild_mem_red_packet_send, [type]},
		{evt_formation_level_up, [lev]},
		{evt_formation_open, []},
		{evt_star_natal_level_up, [natal]},
		{evt_star_level_up, []}, {evt_star_natal, []},
		{evt_star_divination, [type, count]},
		{evt_world_boss_fight_ko, []},
		{evt_world_boss_fight, []},
		{evt_boss_fight_result, [result, boss_id]},
		{evt_boss_fight, []},
		{evt_adventure_use_partner, [bids]},
		{evt_adventure_kill_mon, []},
		{evt_adventure_answer_all_right, []},
		{evt_adventure_room_finish, [evt_id, room_id]},
		{evt_adventure_box, [items]},
		{evt_adventure_finger_guessing, [result]},
		{evt_adventure_goto_floor, [id]},
		{evt_adventure_plunder_result, [result]},
		{evt_adventure_plunder, [status]},
		{evt_star_tower_floor_pass, []},
		{evt_adventure_explore, [num]}, {evt_say, [channel]},
		{evt_market_silver_buy, [price, num]},
		{evt_market_silver_sold, [assets, sold_items]},
		{evt_market_coin_sold, [base_id, price, num]},
		{evt_market_gold_buy, [assets, price, num]},
		{evt_market_silver_first_on_sale, []},
		{evt_eqm_sell, []}, {evt_login_days_reward, [day]},
		{evt_recruit_high, [group, count]},
		{evt_recruit, [group, count, partner_infos]},
		{evt_arena_use_partner, [bids, result]},
		{evt_arena_score2, [score]}, {evt_arena_score, [score]},
		{evt_arena_score_lev, [score_lev]},
		{evt_arena_rank, [rank]},
		{evt_arena_fight_result, [result, use_sprite]},
		{evt_arena_fight, []}, {evt_checkin, [now]},
		{evt_guild_dun_damage, [dps]},
		{evt_guild_dun_fight_ko, [boss_id]},
		{evt_guild_dun_fight, [count, boss_id]},
		{evt_partner_decompose, [count, star]},
		{evt_partner_artifact, []}, {evt_partner_eqm, []},
		{evt_partner_enchant_eqm, [count]},
		{evt_partner_levelup, [bid, lev]}, {evt_partner, [ext]},
		{evt_add_new_partner_bi_bid, [bid, star]},
		{evt_partner_star_up_specific, [bid, star]},
		{evt_partner_star_up, [bid, star]},
		{evt_partner_star, [star]},
		{evt_holiday, [camp_id, bid]}, {evt_invest, [type]},
		{evt_power, [combat_type]},
		{evt_guild_donate_expend, [type, loss]},
		{evt_guild_donate, [type]}, {evt_guild_join, []},
		{evt_combat_drama, [type, step, round, base_ids, ext]},
		{evt_combat_start, [fid, type, ext]},
		{evt_friend_present, [base_id, val]},
		{evt_gain_partner, [partners]}, {evt_friend_sns, []},
		{evt_friend_cluster, [num]}, {evt_friend, [num]},
		{evt_star_tower_pass, [tower]},
		{evt_enter_adventure, [floor, room_id, evt_id]},
		{evt_dungeon_fast_combat, []},
		{evt_dungeon_auto, [count]},
		{evt_dungeon_make, [dun_id]},
		{evt_dungeon_pass, [type, dungeon_id, info]},
		{evt_dungeon_enter, [type, count, info]},
		{holy_eqm_frist_open, []},
		{evt_finish_guide, [base_id]},
		{evt_broadcast_drama, [base_id]},
		{evt_move_map, [base_id, x, y]},
		{evt_leave_map, [id, base_id, x, y]},
		{evt_enter_map, [id, base_id, x, y]},
		{evt_cli_loaded, [mod]}, {evt_zero_push, []},
		{evt_loss_assets, [id, val]}, {evt_loss_guild, [val]},
		{evt_gain_guild, [val]}, {evt_gain_activity, [val]},
		{evt_loss_hero_soul, [val]}, {evt_loss_energy, [val]},
		{evt_gain_energy, [val]},
		{evt_loss_red_gold_or_gold, [val]},
		{evt_loss_red_gold, [val]}, {evt_gain_red_gold, [val]},
		{evt_loss_gold, [val]}, {evt_gain_gold, [val]},
		{evt_loss_silver_coin, [val]},
		{evt_loss_hero_exp, [val]},
		{evt_gain_silver_coin, [val]}, {evt_loss_coin, [val]},
		{evt_gain_coin, [val]},
		{evt_fight_unit, [id, base_id, host_base_id, num]},
		{evt_kill_npc_lose, [id, base_id, host_base_id, num]},
		{evt_kill_npc, [id, base_id, host_base_id, num]},
		{evt_combat_lose, [type]}, {evt_combat_win, [type]},
		{evt_giveup_quest, [id]}, {evt_finish_quest, [id]},
		{evt_commit_quest, [id, type]},
		{evt_accept_quest, [id]}, {evt_use_item_type, [type]},
		{evt_use_item, [base_id, num]},
		{evt_del_item, [base_id, num]},
		{evt_get_item, [base_id, num]},
		{evt_unit_click, [id, type, base_id, do_type]},
		{evt_levup, [old_lev, lev]}, {evt_convert, []},
		{evt_charge_acc, [gold]}, {evt_pay_acc, [gold]},
		{evt_recruit_high_gift, [count, info]},
		{evt_high_recruit, [count, info]},
		{evt_pay, [gold, info]}, {evt_charge_fund, []},
		{evt_charge_invest, []}, {evt_month_card, [type]},
		{evt_name, []}, {evt_create, []},
		{trigger, [id, label, m, f, type, a]},
		{pos,
		 [ver, srv_id, map_id, map_pid, map_bid, map_grid_pid,
		  last, hidden, x, y, dir]},
		{pos_history, [map_id, map_bid, srv_id, x, y]},
		{link, [socket, conn_pid, ip, port, lag]},
		{map_role,
		 [pid, rid, srv_id, name, conn_pid, map, grid_pid, speed,
		  x, y, dir, gx, gy, status, event, label, lev, sex,
		  career, face, fc, avatar, looks]},
		{role_robot,
		 [id, account, platform, zone_id, channel, name, gid,
		  gname, lev, power, sex, career, face_id, face_file,
		  face_update_time, avatar_bid, avatar_frames, say_frames,
		  vip_lev, pos_info, partners, m_formation, sign, city,
		  max_dun_id, m_star, auto_pk, m_hallows, max_star_tower,
		  elite_lev, is_show_vip, arena_elite_defens, m_halidom,
		  m_guild_skill, arena_elite_manifesto,
		  arena_cluster_formation, city_id, honor, honor_badges,
		  honor_point, use_badges, fanse_list, grow_info,
		  room_bbs_set, backdrop_id, is_open_home, soft,
		  max_power, m_resonate_lev, m_sprite_tree,
		  m_arena_peak_champion, look_id, holiday_nian_face]},
		{role,
		 [ver, id, need_sync, loop_counter, type, pid, link,
		  reg_ip, reg_time, trigger, status, s_event, s_event_pid,
		  combat_pid, combat_replay_pid, combat_type_list,
		  ui_combat_type, play_speed, is_in_backstage, is_auto,
		  is_gain, is_ready, is_online, device_type, getui_cid,
		  channel, reg_channel, idfa, reg_idfa, device_id,
		  reg_device_id, os_name, reg_os_name, app_name,
		  reg_app_name, package_name, reg_package_name,
		  package_ver, reg_package_ver, os_ver, carrier_name,
		  net_type, resolution, platform, zone_id, account, name,
		  s_name, career, lev, uplev_time, sex, face_id,
		  face_list, hp, mspd, power, max_power, max_power_time,
		  arena_power, arena_max_power, arena_max_power_time,
		  banned_time, interdict_time, capacity, identity,
		  data_lock, timer, item_next_id, signature, city, assets,
		  pos, game_set, s_looks, login, misc, guild_bag,
		  surface_bag, partner_bag, m_look, m_charge, m_vip,
		  m_var, m_quest, m_drama, m_friend, m_mail, m_formation,
		  m_arena, m_feat, m_checkin, m_exchange, m_buff,
		  m_avatar, m_say, m_dungeon, m_boss, m_recruit, m_honor,
		  m_adventure, m_lev_gift, m_power_gift, m_star,
		  m_star_tower, m_market_silver, m_wish, m_login_days,
		  m_month_card, m_guild_dun, m_star_divination,
		  m_guild_skill, m_media_card_type, m_endless, m_dial,
		  m_days_ranks, m_escort, m_dun_stone, m_hallows,
		  m_day_goals, m_guild_quest, m_recruit_award,
		  m_sky_ladder, m_convert, m_shipping, m_expedition,
		  m_star_gift, holiday_assets, m_privilege, m_month_fund,
		  m_lanterm_festival, m_lanterm_adventure, m_invite_code,
		  misc_ext, m_arena_elite, arena_elite_power,
		  arena_elite_power_time, m_element_temple, m_halidom,
		  m_holiday_dial, arena_elite_max_star, m_break_egg,
		  m_welfare, m_dun_heaven, m_holiday_boss, m_war_order,
		  m_holiday_holy, m_week_card, m_holy_eqm_set,
		  m_arena_cluster, m_holiday_snatch, m_holiday_accumulate,
		  m_room, m_room_feat, m_holiday_boss_new,
		  m_holiday_return_feat, m_holiday_return_sign,
		  m_holiday_return, m_room_grow, m_lanterm_adventure1,
		  m_lanterm_adventure2, m_lanterm_adventure3, m_home,
		  m_home_pet, pet_bag, backdrop_id, backdrop_list,
		  m_holiday_predict, m_holiday_personal_gift, m_resonate,
		  m_resonate_extract, m_sprite_hatch, m_sprite_tree,
		  m_holiday_term_begins, m_holiday_petard, m_encounter,
		  m_holiday_merge_goal, m_arena_team, m_monopoly_maps,
		  m_training_camp, m_weekly, m_arena_peak_champion,
		  m_arena_elite_war_order, m_holiday_fire_gift,
		  m_holiday_personal_fire_gift, m_secret_dun,
		  m_holiday_return_new, m_holiday_charge_rebate,
		  m_holiday_charge_reset, m_holiday_optional_lottery,
		  m_holiday_lucky_dog, m_holiday_nian,
		  m_holiday_time_award, m_holiday_valentines, m_planes,
		  m_planes_war_order, m_new_war_order, m_face,
		  m_subscriber, m_holiday_dime, m_holiday_valentine_boss,
		  m_personal_push, m_holiday_new_week_card,
		  m_holiday_arena_team, m_holiday_practise_tower, p_bag,
		  p_eqm, p_home]},
		{state, [list, reg_list]}]).

-behaviour(gen_server).

-export([set_online/1, set_offline/1, update_power/1,
	 local_fetch/2, local_save/2, set_data_lock/2,
	 fetch_ext_dets/1, dump/2, dump/3, sync_reg/1,
	 first_init/1, save_base/1, load_role_data/1]).

-export([info/1, cast/1, call/1, start_link/0]).

-export([init/1, handle_call/3, handle_cast/2,
	 handle_info/2, terminate/2, code_change/3]).

-record(state, {list = [], reg_list = {[], []}}).

-file("inc/common.hrl", 1).

-file("inc/lib_log.hrl", 1).

-file("inc/common.hrl", 112).

-type p() :: string().

-type z() :: non_neg_integer().

-type srv_id() :: bitstring().

-type role_id() :: {pos_integer(), srv_id()}.

-type guild_id() :: {pos_integer(), srv_id()}.

-type unit_id() :: {pos_integer(), pos_integer()}.

-type pos() :: {pos_integer(), non_neg_integer(),
		non_neg_integer()}.

-file("src/mod/role/role_data.erl", 27).

-file("inc/role.hrl", 1).

-record(role,
	{ver = 78, id = {0, <<>>}, need_sync = 0,
	 loop_counter = 0, type = robot, pid, link, reg_ip,
	 reg_time = 0,
	 trigger = {1, []}  :: {pos_integer(), [tuple()]},
	 status = 0, s_event = 0, s_event_pid, combat_pid = 0,
	 combat_replay_pid = 0, combat_type_list = [],
	 ui_combat_type = 0, play_speed = 1,
	 is_in_backstage = false, is_auto = 0, is_gain = 0,
	 is_ready, is_online = 0, device_type = <<>>,
	 getui_cid = <<>>, channel = <<>>, reg_channel = <<>>,
	 idfa = <<>>, reg_idfa = <<>>, device_id = <<>>,
	 reg_device_id = <<>>, os_name = <<>>,
	 reg_os_name = <<>>, app_name = <<>>,
	 reg_app_name = <<>>, package_name = <<>>,
	 reg_package_name = <<>>, package_ver = <<>>,
	 reg_package_ver = <<>>, os_ver = <<>>,
	 carrier_name = <<>>, net_type = <<>>, resolution = <<>>,
	 platform = <<>>, zone_id = 0  :: non_neg_integer(),
	 account = <<>>, name = <<>>, s_name = 0, career = 0,
	 lev = 1, uplev_time = 0, sex = 0, face_id = 0,
	 face_list = [], hp = 0, mspd = 25, power = 0,
	 max_power = 0, max_power_time = 0, arena_power = 0,
	 arena_max_power = 0, arena_max_power_time = 0,
	 banned_time = 0, interdict_time = 0, capacity = 0,
	 identity = <<>>, data_lock = 0, timer, item_next_id = 1,
	 signature = <<>>, city = 0, assets, pos, game_set,
	 s_looks = []  ::
	     [{non_neg_integer(), non_neg_integer(),
	       non_neg_integer(), bitstring()}],
	 login, misc, guild_bag, surface_bag, partner_bag,
	 m_look, m_charge, m_vip, m_var, m_quest, m_drama,
	 m_friend, m_mail = [], m_formation, m_arena, m_feat,
	 m_checkin, m_exchange, m_buff, m_avatar, m_say,
	 m_dungeon, m_boss, m_recruit, m_honor, m_adventure,
	 m_lev_gift, m_power_gift, m_star, m_star_tower,
	 m_market_silver, m_wish, m_login_days, m_month_card,
	 m_guild_dun, m_star_divination, m_guild_skill,
	 m_media_card_type = [], m_endless, m_dial, m_days_ranks,
	 m_escort, m_dun_stone, m_hallows, m_day_goals,
	 m_guild_quest, m_recruit_award, m_sky_ladder, m_convert,
	 m_shipping, m_expedition, m_star_gift,
	 holiday_assets = [], m_privilege, m_month_fund,
	 m_lanterm_festival, m_lanterm_adventure, m_invite_code,
	 misc_ext, m_arena_elite, arena_elite_power = 0,
	 arena_elite_power_time = 0, m_element_temple, m_halidom,
	 m_holiday_dial, arena_elite_max_star = 0, m_break_egg,
	 m_welfare, m_dun_heaven, m_holiday_boss, m_war_order,
	 m_holiday_holy, m_week_card, m_holy_eqm_set,
	 m_arena_cluster, m_holiday_snatch, m_holiday_accumulate,
	 m_room, m_room_feat, m_holiday_boss_new,
	 m_holiday_return_feat, m_holiday_return_sign,
	 m_holiday_return, m_room_grow, m_lanterm_adventure1,
	 m_lanterm_adventure2, m_lanterm_adventure3, m_home,
	 m_home_pet, pet_bag, backdrop_id = 0,
	 backdrop_list = [], m_holiday_predict,
	 m_holiday_personal_gift, m_resonate, m_resonate_extract,
	 m_sprite_hatch, m_sprite_tree, m_holiday_term_begins,
	 m_holiday_petard, m_encounter, m_holiday_merge_goal,
	 m_arena_team, m_monopoly_maps, m_training_camp,
	 m_weekly, m_arena_peak_champion,
	 m_arena_elite_war_order, m_holiday_fire_gift,
	 m_holiday_personal_fire_gift, m_secret_dun,
	 m_holiday_return_new, m_holiday_charge_rebate,
	 m_holiday_charge_reset, m_holiday_optional_lottery,
	 m_holiday_lucky_dog, m_holiday_nian,
	 m_holiday_time_award, m_holiday_valentines, m_planes,
	 m_planes_war_order, m_new_war_order, m_face,
	 m_subscriber, m_holiday_dime, m_holiday_valentine_boss,
	 m_personal_push, m_holiday_new_week_card,
	 m_holiday_arena_team, m_holiday_practise_tower, p_bag,
	 p_eqm, p_home}).

-record(role_robot,
	{id = {0, <<>>}, account = <<>>, platform = <<>>,
	 zone_id = 0, channel = <<>>, name = <<>>,
	 gid = {0, <<>>}, gname = <<>>, lev = 0, power = 0,
	 sex = 0, career = 0, face_id = 0, face_file = <<>>,
	 face_update_time = 0, avatar_bid = 0,
	 avatar_frames = [], say_frames = [], vip_lev = 0,
	 pos_info = [], partners = [], m_formation = [],
	 sign = <<>>, city = 0, max_dun_id = 0, m_star,
	 auto_pk = 0, m_hallows, max_star_tower = 0,
	 elite_lev = 0, is_show_vip = 0, arena_elite_defens = [],
	 m_halidom, m_guild_skill, arena_elite_manifesto = [],
	 arena_cluster_formation = [], city_id = 0, honor = 0,
	 honor_badges = [], honor_point = 0, use_badges = [],
	 fanse_list = [], grow_info = [], room_bbs_set = 1,
	 backdrop_id = 0, is_open_home = 0, soft = 0,
	 max_power = 0, m_resonate_lev = 0, m_sprite_tree,
	 m_arena_peak_champion, look_id = 0,
	 holiday_nian_face = []}).

-record(map_role,
	{pid  :: undefined | pid(),
	 rid = 0  :: non_neg_integer(),
	 srv_id = <<>>  :: bitstring(),
	 name = <<>>  :: bitstring(),
	 conn_pid  :: undefined | pid(),
	 map = 0  :: non_neg_integer(), grid_pid  :: pid(),
	 speed = 1  :: pos_integer(),
	 x = 0  :: non_neg_integer(),
	 y = 0  :: non_neg_integer(),
	 dir = 0  :: non_neg_integer(),
	 gx = 0  :: non_neg_integer(),
	 gy = 0  :: non_neg_integer(),
	 status = 0  :: non_neg_integer(),
	 event = 0  :: non_neg_integer(), label = 0  :: 0..2,
	 lev = 1  :: pos_integer(), sex = 0  :: 0..2,
	 career = 0  :: non_neg_integer(),
	 face = 1  :: pos_integer(),
	 fc = 0  :: non_neg_integer(),
	 avatar = 0  :: non_neg_integer(),
	 looks = []  :: list()}).

-file("src/mod/role/role_data.erl", 28).

-file("inc/link.hrl", 1).

-record(link,
	{socket, conn_pid, ip = {127, 0, 0, 1}, port, lag}).

-file("src/mod/role/role_data.erl", 29).

-file("inc/pos.hrl", 1).

-record(pos_history,
	{map_id = 0  :: non_neg_integer(),
	 map_bid = 0  :: non_neg_integer(),
	 srv_id = <<>>  :: bitstring(),
	 x = 0  :: non_neg_integer(),
	 y = 0  :: non_neg_integer()}).

-record(pos,
	{ver = 2, srv_id = <<>>  :: bitstring(),
	 map_id = {0, <<>>}, map_pid = 0, map_bid = 0,
	 map_grid_pid = 0, last, hidden = 0, x = 0, y = 0,
	 dir = 5}).

-file("src/mod/role/role_data.erl", 30).

-file("inc/trigger.hrl", 1).

-record(trigger,
	{id = 1  :: pos_integer(), label  :: atom(),
	 m  :: undefined | atom(), f  :: function() | atom(),
	 type = 0  :: non_neg_integer(), a = []  :: list()}).

-record(evt_create, {}).

-record(evt_name, {}).

-record(evt_month_card, {type = 0}).

-record(evt_charge_invest, {}).

-record(evt_charge_fund, {}).

-record(evt_pay, {gold = 0, info = #{}}).

-record(evt_high_recruit, {count = 0, info = #{}}).

-record(evt_recruit_high_gift, {count = 0, info = #{}}).

-record(evt_pay_acc, {gold = 0}).

-record(evt_charge_acc, {gold = 0}).

-record(evt_convert, {}).

-record(evt_levup,
	{old_lev = 0  :: non_neg_integer(),
	 lev = 0  :: non_neg_integer()}).

-record(evt_unit_click,
	{id = 0  :: non_neg_integer(),
	 type = 0  :: non_neg_integer(),
	 base_id = 0  :: non_neg_integer(),
	 do_type = -1  :: integer()}).

-record(evt_get_item,
	{base_id = 1  :: pos_integer(),
	 num = 1  :: pos_integer()}).

-record(evt_del_item,
	{base_id  :: pos_integer(), num = 0  :: pos_integer()}).

-record(evt_use_item,
	{base_id  :: pos_integer(), num = 0  :: pos_integer()}).

-record(evt_use_item_type,
	{type = 0  :: non_neg_integer()}).

-record(evt_accept_quest, {id = 0  :: pos_integer()}).

-record(evt_commit_quest,
	{id = 0  :: pos_integer(), type = 0}).

-record(evt_finish_quest, {id = 0  :: pos_integer()}).

-record(evt_giveup_quest, {id = 0  :: pos_integer()}).

-record(evt_combat_win, {type = 0}).

-record(evt_combat_lose, {type = 0}).

-record(evt_kill_npc,
	{id = 0  :: non_neg_integer(),
	 base_id = 1  :: pos_integer(),
	 host_base_id = 1  :: pos_integer(),
	 num = 1  :: pos_integer()}).

-record(evt_kill_npc_lose,
	{id = 0  :: non_neg_integer(),
	 base_id = 1  :: pos_integer(),
	 host_base_id = 1  :: pos_integer(),
	 num = 1  :: pos_integer()}).

-record(evt_fight_unit,
	{id = 0  :: non_neg_integer(),
	 base_id = 1  :: pos_integer(),
	 host_base_id = 1  :: pos_integer(),
	 num = 1  :: pos_integer()}).

-record(evt_gain_coin, {val = 1  :: pos_integer()}).

-record(evt_loss_coin, {val = 1  :: pos_integer()}).

-record(evt_gain_silver_coin,
	{val = 1  :: pos_integer()}).

-record(evt_loss_hero_exp, {val = 1  :: pos_integer()}).

-record(evt_loss_silver_coin,
	{val = 1  :: pos_integer()}).

-record(evt_gain_gold, {val = 1  :: pos_integer()}).

-record(evt_loss_gold, {val = 1  :: pos_integer()}).

-record(evt_gain_red_gold, {val = 1  :: pos_integer()}).

-record(evt_loss_red_gold, {val = 1  :: pos_integer()}).

-record(evt_loss_red_gold_or_gold,
	{val = 1  :: pos_integer()}).

-record(evt_gain_energy, {val = 1  :: pos_integer()}).

-record(evt_loss_energy, {val = 1  :: pos_integer()}).

-record(evt_loss_hero_soul,
	{val = 1  :: pos_integer()}).

-record(evt_gain_activity, {val = 0}).

-record(evt_gain_guild, {val = 0}).

-record(evt_loss_guild, {val = 0}).

-record(evt_loss_assets, {id = 0, val = 0}).

-record(evt_zero_push, {}).

-record(evt_cli_loaded,
	{mod = 0  :: non_neg_integer()}).

-record(evt_enter_map,
	{id = 1  :: pos_integer(),
	 base_id = 1  :: pos_integer(),
	 x = 0  :: non_neg_integer(),
	 y = 0  :: non_neg_integer()}).

-record(evt_leave_map,
	{id = 1  :: pos_integer(),
	 base_id = 1  :: pos_integer(),
	 x = 0  :: non_neg_integer(),
	 y = 0  :: non_neg_integer()}).

-record(evt_move_map,
	{base_id = 1  :: non_neg_integer(),
	 x = 0  :: non_neg_integer(),
	 y = 0  :: non_neg_integer()}).

-record(evt_broadcast_drama, {base_id = 0}).

-record(evt_finish_guide, {base_id = 0}).

-record(holy_eqm_frist_open, {}).

-record(evt_dungeon_enter,
	{type = 0, count = 0, info = #{}}).

-record(evt_dungeon_pass,
	{type = 0, dungeon_id = 0, info = #{}}).

-record(evt_dungeon_make, {dun_id = 0}).

-record(evt_dungeon_auto, {count = 0}).

-record(evt_dungeon_fast_combat, {}).

-record(evt_enter_adventure,
	{floor = 0, room_id = 0, evt_id = 0}).

-record(evt_star_tower_pass, {tower = 0}).

-record(evt_friend, {num = 0}).

-record(evt_friend_cluster, {num = 0}).

-record(evt_friend_sns, {}).

-record(evt_gain_partner, {partners = []}).

-record(evt_friend_present, {base_id = 0, val = 0}).

-record(evt_combat_start, {fid, type, ext = #{}}).

-record(evt_combat_drama,
	{type = 0, step, round = 0, base_ids = [], ext = []}).

-record(evt_guild_join, {}).

-record(evt_guild_donate, {type = 0}).

-record(evt_guild_donate_expend, {type = 0, loss = []}).

-record(evt_power, {combat_type = 0}).

-record(evt_invest, {type = 0}).

-record(evt_holiday, {camp_id = 0, bid = 0}).

-record(evt_partner_star, {star = 0}).

-record(evt_partner_star_up, {bid = 0, star = 0}).

-record(evt_partner_star_up_specific,
	{bid = 0, star = 0}).

-record(evt_add_new_partner_bi_bid,
	{bid = 0, star = 0}).

-record(evt_partner, {ext = #{}}).

-record(evt_partner_levelup, {bid = 0, lev = 0}).

-record(evt_partner_enchant_eqm, {count}).

-record(evt_partner_eqm, {}).

-record(evt_partner_artifact, {}).

-record(evt_partner_decompose, {count = 0, star = 0}).

-record(evt_guild_dun_fight, {count, boss_id}).

-record(evt_guild_dun_fight_ko, {boss_id}).

-record(evt_guild_dun_damage, {dps = 0}).

-record(evt_checkin, {now = 0}).

-record(evt_arena_fight, {}).

-record(evt_arena_fight_result,
	{result, use_sprite = 0}).

-record(evt_arena_rank, {rank}).

-record(evt_arena_score_lev, {score_lev}).

-record(evt_arena_score, {score}).

-record(evt_arena_score2, {score}).

-record(evt_arena_use_partner, {bids = [], result = 0}).

-record(evt_recruit,
	{group = 0, count = 0, partner_infos = []}).

-record(evt_recruit_high, {group = 0, count = 0}).

-record(evt_login_days_reward, {day = 0}).

-record(evt_eqm_sell, {}).

-record(evt_market_silver_first_on_sale, {}).

-record(evt_market_gold_buy, {assets, price, num}).

-record(evt_market_coin_sold,
	{base_id = 0, price = 0, num}).

-record(evt_market_silver_sold,
	{assets = [], sold_items = []}).

-record(evt_market_silver_buy, {price, num = 0}).

-record(evt_say, {channel}).

-record(evt_adventure_explore, {num = 0}).

-record(evt_star_tower_floor_pass, {}).

-record(evt_adventure_plunder, {status}).

-record(evt_adventure_plunder_result, {result}).

-record(evt_adventure_goto_floor, {id}).

-record(evt_adventure_finger_guessing, {result}).

-record(evt_adventure_box, {items = []}).

-record(evt_adventure_room_finish,
	{evt_id = 0, room_id = 0}).

-record(evt_adventure_answer_all_right, {}).

-record(evt_adventure_kill_mon, {}).

-record(evt_adventure_use_partner, {bids = []}).

-record(evt_boss_fight, {}).

-record(evt_boss_fight_result, {result, boss_id}).

-record(evt_world_boss_fight, {}).

-record(evt_world_boss_fight_ko, {}).

-record(evt_star_divination, {type, count}).

-record(evt_star_natal, {}).

-record(evt_star_level_up, {}).

-record(evt_star_natal_level_up, {natal}).

-record(evt_formation_open, {}).

-record(evt_formation_level_up, {lev}).

-record(evt_guild_mem_red_packet_send, {type = 0}).

-record(evt_guild_mem_red_packet_price,
	{type = 0, max_val = 0, assets = 0}).

-record(evt_guild_red_packet_reward, {type = 0}).

-record(evt_guild_redpacket_best, {}).

-record(evt_endless_fight, {}).

-record(evt_endless_pass, {round = 0}).

-record(evt_endless_pass_water, {round = 0}).

-record(evt_endless_pass_fire, {round = 0}).

-record(evt_endless_pass_wind, {round = 0}).

-record(evt_endless_pass_light_dark, {round = 0}).

-record(evt_endless_appoint, {}).

-record(evt_valentine_boss, {}).

-record(evt_dungeon_stone_fight, {type = 0}).

-record(evt_shipping, {quality = 0}).

-record(evt_shipping_refresh, {}).

-record(evt_guild_war_join, {}).

-record(evt_guild_war_top, {rank = 0}).

-record(evt_guild_war_join_and_win, {}).

-record(evt_escort_enter, {}).

-record(evt_escort_fight, {}).

-record(evt_hallows_activate, {id = 0}).

-record(evt_hallows_all_step, {}).

-record(evt_hallows_step, {}).

-record(evt_stone_all_lv, {}).

-record(evt_partner_stone_all_lv, {}).

-record(evt_guild_skill, {}).

-record(evt_exchange, {type = 0}).

-record(evt_guild_dun_buff, {}).

-record(evt_dial, {count = 0}).

-record(evt_loss_hallows_essence, {count = 0}).

-record(evt_hook_time, {}).

-record(evt_guild_quest_lev, {lev = 0}).

-record(evt_guild_war, {}).

-record(evt_mystery_buy, {type = 0}).

-record(evt_eqm_compound, {}).

-record(evt_expedition_fight,
	{round = 0, difficulty = 0, count = 1, is_rank = 1}).

-record(evt_expedition_open_box, {}).

-record(evt_primus_fight, {}).

-record(evt_artifact_compose, {}).

-record(evt_adventure_boss_fight_count, {}).

-record(evt_partner_advance, {}).

-record(evt_adventure_treasure_open, {}).

-record(evt_adventure_trade_count, {}).

-record(evt_equipment_compound, {count = 0}).

-record(evt_partner_add_new, {star = 0}).

-record(evt_adventure_item_expend_count, {id = 0}).

-record(evt_hallows_step_intensify, {}).

-record(evt_artifact_recast, {}).

-record(evt_artifact_recast_skills, {skills = []}).

-record(evt_artifact_compose_quality, {id = 0}).

-record(evt_expedition_fight_count,
	{id = 0, count = 1}).

-record(evt_holiday_make_dumplings, {count = 0}).

-record(evt_adventure_floor_count, {}).

-record(evt_cross_server_ladder, {}).

-record(evt_championships_bet, {}).

-record(evt_championships_bet_win, {}).

-record(evt_championships_bet_cont_win, {count = 0}).

-record(evt_championships_bet_cont_win_day,
	{count = 0}).

-record(evt_cluster_championships_bet_cont_win_day,
	{count = 0}).

-record(evt_peak_championships_bet_cont_win_season,
	{count = 0}).

-record(evt_peak_championships_end_rank, {rank = 0}).

-record(evt_peak_championships_takepartin, {}).

-record(evt_cluster_championships_takepartin, {}).

-record(evt_championships_32, {}).

-record(evt_championships_end_rank, {rank = 0}).

-record(evt_cluster_championships_end_rank, {rank = 0}).

-record(evt_sky_ladder_rank, {rank = 0}).

-record(evt_sky_ladder_end_rank, {rank = 0}).

-record(evt_sky_ladder_win, {}).

-record(evt_arena_elite_rank, {rank = 0}).

-record(evt_arena_elite_cont_win, {count = 0}).

-record(evt_arena_elite_win_count, {}).

-record(evt_arena_elite_champion, {combat_type = 0}).

-record(evt_arena_elite_end_lev, {lev = 0, score = 0}).

-record(evt_arena_elite_end_rank, {rank = 0}).

-record(evt_holiday_break_egg, {count = 0}).

-record(evt_fight_holiday_boss, {}).

-record(evt_pass_holiday_boss, {id = 0}).

-record(evt_holiday_boss_get_score, {}).

-record(evt_fight_holiday_boss_new, {}).

-record(evt_pass_holiday_boss_new,
	{id = 0, difficulty = 0}).

-record(evt_recruit_trial_partner, {bid = 0}).

-record(evt_replay_hall_like, {}).

-record(evt_replay_share, {}).

-record(evt_grow_share, {}).

-record(evt_honor_share, {}).

-record(evt_replay_hall_watch, {}).

-record(evt_element_temple_pass, {round = 0}).

-record(evt_element_temple_end_rank, {rank = 0}).

-record(evt_combat_pvp_over,
	{round = 0, atk_power, def_power, halo_dizzy_num = 0,
	 result, hp_info, max_num_diff, kill_info, dizzy_info}).

-record(evt_combat_over,
	{hurt_statistics_a = [], curt_statistics_a = [],
	 combat_type = 0, continue_hurt = [], anti_kill_num = 0,
	 halo_kill_num = 0, revive_info = [], dodge_count = 0,
	 max_fire_num = 0, sprite_kill_num = 0}).

-record(evt_dun_heaven_perfectpass, {chapter_id = 0}).

-record(evt_arena_cluster_win, {}).

-record(evt_arena_cluster_end_rank, {rank = 0}).

-record(evt_combat_balance, {}).

-record(evt_partnerskill_learn, {lev = 0}).

-record(evt_first_enter_home, {}).

-record(evt_enter_home, {}).

-record(evt_visit_home, {}).

-record(evt_worship, {type = 0}).

-record(evt_gain_home_coin, {}).

-record(evt_rename_home, {}).

-record(evt_home_soft, {soft = 0}).

-record(evt_home_pet_set_items, {}).

-record(evt_enter_adventure_mine, {}).

-record(evt_mine_save_defense, {}).

-record(evt_mine_buy_miner, {}).

-record(evt_mine_combat, {}).

-record(evt_mine_owned, {}).

-record(evt_hallows_refine, {lev = 0}).

-record(evt_cluster_champion_sub_count, {}).

-record(evt_cluster_champion_join, {}).

-record(evt_get_speciality, {}).

-record(evt_travel_time, {time = 0}).

-record(evt_get_furniture, {num = 0}).

-record(evt_extract_start, {}).

-record(evt_extract_award, {}).

-record(evt_resonate_levup, {}).

-record(evt_term_beigns_order, {count = 0}).

-record(evt_term_beigns_win_order, {difficulty = 0}).

-record(evt_term_beigns_paper, {count = 0}).

-record(evt_term_beigns_boss, {count = 0}).

-record(evt_add_friend, {count = 0}).

-record(evt_mystery_mall_buy, {count = 0}).

-record(evt_holy_eqm_lottery, {count = 0}).

-record(evt_holy_eqm_ref, {count = 0}).

-record(evt_arena_elite_combat_count, {count = 0}).

-record(evt_dun_heaven_win, {count = 0}).

-record(evt_element_temple_win, {count = 0}).

-record(evt_partner_dungeon_stone_win, {count = 0}).

-record(evt_recruit_convert, {count = 0}).

-record(evt_get_hook_count, {count = 0}).

-record(evt_arena_cluster_champion_bet, {count = 0}).

-record(evt_get_friend_point, {count = 0}).

-record(evt_get_gold, {count = 0}).

-record(evt_petard_meteor, {count = 0}).

-record(evt_petard_firework, {count = 0}).

-record(evt_petard_red_packet, {count = 0}).

-record(evt_petard_send_red_packet, {count = 0}).

-record(evt_petard_score, {count = 0}).

-record(evt_use_petard, {count = 0}).

-record(evt_donate_sweet_score, {count = 0}).

-record(evt_normal_recruit, {count = 0}).

-record(evt_elite_recruit, {count = 0}).

-record(evt_elite_recruit_info, {partner_infos = []}).

-record(evt_sprite_lottery, {count = 0}).

-record(evt_recruit_lottery, {count = 0}).

-record(evt_appoint_sprite, {bids = []}).

-record(evt_appoint_sprite_compound, {bids = []}).

-record(evt_arena_use_sprite, {bids = [], result = 0}).

-record(evt_arena_team_win, {count = 0}).

-record(evt_arena_team_leader_join, {count = 0}).

-record(evt_arena_team_two_win, {count = 0}).

-record(evt_arena_team_season_five, {count = 0}).

-record(evt_arena_team_season_one, {count = 0}).

-record(evt_arena_team_first, {count = 0}).

-record(evt_arena_team_last, {count = 0}).

-record(evt_arena_team_season_found_team, {count = 0}).

-record(evt_arena_team_join, {count = 0}).

-record(evt_arena_team_defense_success, {count = 0}).

-record(evt_arena_team_double_kill, {}).

-record(evt_guild_secret_area_combat, {count = 0}).

-record(evt_sprite_compound, {}).

-record(evt_sprite_hatch, {}).

-record(evt_sprite_hatch_expedite, {}).

-record(evt_sprite_set_pos, {}).

-record(evt_sprite_tree, {}).

-record(evt_enter_monopoly, {}).

-record(evt_monopoly_develop,
	{stage_id = 0, develop = 0}).

-record(evt_monopoly_dice, {type = 0}).

-record(evt_monopoly_dungeon, {}).

-record(evt_monopoly_kill_boss, {}).

-record(evt_enter_secret_dun, {}).

-record(evt_enter_secret_kill_monster, {}).

-record(evt_enter_secret_kill_monster2, {count = 1}).

-record(evt_enter_secret_reply, {}).

-record(evt_enter_secret_loan, {}).

-record(evt_enter_secret_treasure, {}).

-record(evt_enter_secret_pass, {dun_id = 0}).

-record(evt_planes_pass, {}).

-record(evt_planes_kill_guard, {}).

-record(evt_enter_nian, {}).

-record(evt_nian_fight_monster, {}).

-record(evt_nian_fight_big_monster, {}).

-record(evt_nian_red_packet, {}).

-record(evt_nian_firework, {}).

-record(evt_nian_fight_gold_monster, {}).

-record(evt_skin, {}).

-record(evt_enter_holiday_arena_team, {}).

-record(evt_holiday_arena_team_lev_up, {}).

-record(evt_holiday_arena_team_join_team, {}).

-record(evt_holiday_arena_team_combat_count, {}).

-record(evt_holiday_arena_team_combat_win_count, {}).

-record(evt_guild_break_skill, {}).

-record(r_evt_power, {power = 0, cache = #{}}).

-record(r_evt_role_lev, {cache = #{}}).

-record(r_evt_hero_compose, {cache = #{}}).

-record(r_evt_first_recruit, {cache = #{}}).

-record(r_evt_star_tower_floor, {cache = #{}}).

-record(r_evt_endless_pass, {round = 0, cache = #{}}).

-record(r_evt_endless_pass_water,
	{round = 0, cache = #{}}).

-record(r_evt_endless_pass_fire,
	{round = 0, cache = #{}}).

-record(r_evt_endless_pass_wind,
	{round = 0, cache = #{}}).

-record(r_evt_endless_pass_light_dark,
	{round = 0, cache = #{}}).

-record(r_evt_expedition_pass, {cache = #{}}).

-record(r_evt_role_register_days, {cache = #{}}).

-record(r_evt_partner_get, {cache = #{}}).

-record(r_evt_primus_first_fight_pass,
	{rank = 0, cache = #{}}).

-record(r_evt_primus_first_fight_rank,
	{rank = 0, cache = #{}}).

-record(r_evt_partner_eqpt_item, {cache = #{}}).

-record(r_evt_first_partnerskill_learn, {cache = #{}}).

-record(r_evt_join_guild, {cache = #{}}).

-record(r_evt_build_guild, {cache = #{}}).

-record(r_evt_hallows_rank, {cache = #{}}).

-record(r_evt_room_liked, {cache = #{}}).

-record(r_evt_friend_add, {cache = #{}}).

-record(r_evt_friend_cluster_add, {cache = #{}}).

-record(r_evt_arena_cluster_rankget, {cache = #{}}).

-record(r_evt_arena_cluster_rank, {cache = #{}}).

-record(r_evt_championships_end_rank, {cache = #{}}).

-record(r_evt_sky_ladder_end_rank, {cache = #{}}).

-record(r_evt_arena_elite_end_levget, {cache = #{}}).

-record(r_evt_arena_elite_end_lev, {cache = #{}}).

-record(r_evt_arena_elite_end_rankget, {cache = #{}}).

-record(r_evt_arena_firstrank_end, {cache = #{}}).

-record(r_evt_arena_like_number, {cache = #{}}).

-record(r_evt_guild_dun_rank, {cache = #{}}).

-record(r_evt_guild_war_rank, {cache = #{}}).

-record(r_evt_partner_holy_eqpt, {cache = #{}}).

-file("src/mod/role/role_data.erl", 31).

-file("inc/login.hrl", 1).

-record(login,
	{login_time = 0, logout_time = 0, prev_logout_time = 0,
	 prev_login_time = 0, log_login_time = 0}).

-file("src/mod/role/role_data.erl", 32).

-file("inc/vip.hrl", 1).

-record(m_vip,
	{ver = 2, lev = 0, lev_reward = [], tired_charge = []}).

-record(vip_data,
	{lev = 0  :: non_neg_integer(),
	 gold = 0  :: non_neg_integer(), price = []  :: list(),
	 old_price = []  :: list(), items = []  :: list(),
	 ext_reward = []}).

-record(vip_effect_data,
	{name = <<>>  :: bitstring(),
	 val = 0  :: non_neg_integer()}).

-file("src/mod/role/role_data.erl", 33).

-file("inc/assets.hrl", 1).

-file("inc/game_assets.hrl", 1).

-file("inc/assets.hrl", 12).

-record(assets,
	{ver = -1, exp = 0, coin = 0, silver_coin = 0, gold = 0,
	 red_gold = 0, gold_acc = 0, vip_exp = 0, energy = 0,
	 energy_max = 0, energy_time = 0, activity = 0,
	 guild = 0, arena_cent = 0, hero_soul = 0,
	 feat_point = 0, triple_rebate = 0, friend_point = 0,
	 boss_point = 0, star_hun = 0, star_point = 0,
	 arena_guesscent = 0, sky_coin = 0, hero_exp = 0,
	 recruit_hero = 0, recruithigh_hero = 0,
	 expedition_medal = 0, elite_coin = 0, holy_eqm_coin = 0,
	 skin_debris = 0, cluster_coin = 0, home_coin = 0,
	 hallow_refine = 0, cluster_guess_cent = 0,
	 feather_exchange = 0, brave_symbol = 0,
	 peak_guess_cent = 0, hero_soul_coin = 0,
	 acc_recruit_hero = 0, predict_point = 0}).

-file("src/mod/role/role_data.erl", 34).

-file("inc/timer.hrl", 1).

-record(timer,
	{id  :: term(), timeout = 1000  :: pos_integer(),
	 m  :: undefined | atom(), f  :: function() | atom(),
	 a = []  :: [term()], times = 1  :: integer(),
	 next_tick = 0  :: non_neg_integer(),
	 set_time = 1  :: pos_integer()}).

-record(rtimer,
	{ref  :: undefined | reference(),
	 key = 0  :: non_neg_integer(),
	 timers = []  :: [#timer{}]}).

-record(s_timer,
	{ref  :: undefined | reference(),
	 timers = []  :: [#timer{}]}).

-file("src/mod/role/role_data.erl", 35).

-file("inc/guild.hrl", 1).

-record(guild_log, {key = {0, <<>>}, list = []}).

-record(guild_log_info,
	{id = 0, guild_id = {0, <<>>}, type = 0, time = 0,
	 role_id = {0, <<>>}, role_name = 0, msg = <<>>}).

-record(guild_bag,
	{ver = 2, id = {0, <<>>}, pid, name = <<>>, post = 0,
	 lev = 0, join_time = 0, quit_time = 0, send_time = 0,
	 send_num = 0, recv_num = 0, true_quit_time = 0,
	 quit_post = 0}).

-record(guild,
	{ver = 7, id = {0, <<>>}, name = <<>>, lev = 1, exp = 0,
	 day_exp = 0, pid = 0, leader_name = <<>>,
	 leader_id = {0, <<>>}, members = [], members_num = 1,
	 members_max = 50, next_id = 1, sign = <<>>,
	 apply_lev = guild_data:get_const(guild_min_lev),
	 apply_type = 1, recruit_num = 0, cache, sync = 0,
	 create_time = 0, power = 0, rename_time = 0,
	 lock_time = 0, donate_exp = 0, red_packet = [],
	 guild_war_box_end_time = 0, guild_war_relust = 0,
	 guild_war_box = [], guild_war_sign = [], day_var = [],
	 vice_leader_mail = 0, normal_mail = 0, vitality = 0,
	 apply_power = 0}).

-record(guild_cache, {}).

-record(guild_war_box,
	{order = 0, rid = 0, sid = <<>>, name = <<>>,
	 item_id = 0, item_num = 0}).

-record(guild_member,
	{ver = 6, id = {0, <<>>}, pid = 0, name = <<>>,
	 face = 0, lev = 0, sex = 1, power = 0, post = 0,
	 vip_lev = 0, online = 1, join_time = 0, login_time = 0,
	 donate = 0, day_donate = 0, avatar_bid = 0,
	 red_packet_num = 0, red_packet_price = 0,
	 red_packet_time = 0, red_packet_recv_num = 0,
	 red_packet_recv_time = 0, active_lev = 0,
	 day_donate_type = 0, day_donate_time = 0,
	 day_dun_time = 0, day_war_time = 0, look_id = 0,
	 face_update_time = 0, face_file = <<>>}).

-record(guild_apply,
	{gid = {0, <<>>}, id = {0, <<>>}, pid = 0, name = <<>>,
	 face = 0, lev = 0, power = 0, post = 0, vip_lev = 0,
	 online = 1, apply_time = 0, face_update_time = 0,
	 face_file = <<>>}).

-record(guild_rank,
	{id = {0, <<>>}, name = <<>>, lev = 1, exp = 0,
	 leader_name = <<>>, leader_id = {0, <<>>},
	 leader_face = 0, leader_lev = 0, members_num = 1,
	 members_max = 50, apply_lev = 0, apply_type = 1,
	 create_time = 0, power = 0, index = 0,
	 leader_avatar_bid = 0, leader_look_id = 0,
	 leader_face_update_time = 0, leader_face_file = <<>>,
	 apply_power = 0}).

-record(g_merge,
	{gid = {0, <<>>}, gname = <<>>, gid2 = {0, <<>>},
	 gname2 = <<>>, role_id = {0, <<>>}, rname = <<>>,
	 end_time = 0, gold = 0}).

-record(guild_position,
	{id = 0, name = <<>>, limit = []}).

-record(guild_data,
	{lev = 0, exp = 0, num = 0, maintain = 0}).

-record(g_mem_red_packet,
	{id = {{0, <<>>}, 0}, rid = {0, <<>>}, name = <<>>,
	 face_id = 0, avatar_bid = 0, post = <<>>, type = 0,
	 num = 0, max_num = 0, val = 0, max_val = 0, list = [],
	 mems = [], start_time = 0, end_time = 0, msg_id = 0,
	 face_update_time = 0, face_file = <<>>}).

-file("src/mod/role/role_data.erl", 36).

-file("inc/friend.hrl", 1).

-record(m_friend, {ver = 1, is_open = 0, list = []}).

-record(friend_tmp,
	{fid = {0, <<>>}, intimacy = 0, ctime = 0, name = <<>>,
	 gname = <<>>, gid = {0, <<>>}, sex = 0, career = 0,
	 face_id = 0, avatar_bid = 0, lev = 0, vip_lev = 0,
	 power = 0, login_time = 0, login_out_time = 0,
	 is_online = 0, is_cross = 0, main_partner_id = 0,
	 partner_bid = 0, partner_lev = 0, partner_star = 0,
	 is_awake = 0, is_used = 0, is_present = 0, is_draw = 0,
	 dun_id = 1, is_fanse = 0, is_home = 0, soft = 0,
	 face_update_time = 0, face_file = <<>>}).

-record(friend,
	{myid = 0, fid = {0, <<>>}, intimacy = 0, is_draw = 0,
	 ctime = 0}).

-record(role_friend,
	{id = {0, <<>>}, name = <<>>, gname = <<>>,
	 gid = {0, <<>>}, sex = 0, career = 0, face_id = 0,
	 lev = 0, power = 0, login_time = 0, login_out_time = 0,
	 is_online = 0, main_partner_id = 0, partner_bid = 0,
	 partner_lev = 0, partner_star = 0, is_home = 0,
	 avatar_bid = 0, vip_lev = 0, dun_id = 1, soft = 0,
	 face_update_time = 0, face_file = <<>>}).

-record(friend_req,
	{id = {0, <<>>}, name = <<>>, sex = 0, career = 0,
	 face_id = 0, lev = 0, power = 0, time = 0,
	 avatar_bid = 0, face_update_time = 0,
	 face_file = <<>>}).

-file("src/mod/role/role_data.erl", 37).

-file("inc/role_misc.hrl", 1).

-record(role_misc,
	{reg_zero_time = 0, self_charge = 0,
	 combat_watch_pid = 0, mail_posting = [],
	 is_do_online = 0, gm_attr = [], dun_auto_num = 0,
	 dun_auto_lose = 0, invite_code_list = [],
	 return_code_list = [], need_captcha = 0}).

-file("src/mod/role/role_data.erl", 38).

load_role_data(Num) ->
    role_data ! {load_role_data, Num}.

sys_load_role_data(Rid, SrvId) ->
    case catch role_data:local_fetch(by_id, {Rid, SrvId}) of
      {ok, normal, R} ->
	  formation_role_lib:login(R),
	  case {whereis(lager_event), whereis(lager_event),
		lager_config:get({lager_event, loglevel}, {0, []})}
	      of
	    {undefined, undefined, _} ->
		fun () -> {error, lager_not_running} end();
	    {undefined, _, _} ->
		fun () -> {error, {sink_not_configured, lager_event}}
		end();
	    {__Pidrole_data48, _,
	     {__Levelrole_data48, __Tracesrole_data48}}
		when __Levelrole_data48 band 64 /= 0 orelse
		       __Tracesrole_data48 /= [] ->
		lager:do_log(info,
			     [{module, role_data},
			      {function, sys_load_role_data}, {line, 48},
			      {pid, pid_to_list(self())}, {node, node()}
			      | lager:md()],
			     io_lib:format("加载角色数据: ~w : ~s", [Rid, SrvId]),
			     none, 4096, 64, __Levelrole_data48,
			     __Tracesrole_data48, lager_event,
			     __Pidrole_data48);
	    _ -> ok
	  end;
      _ -> skip
    end.

set_online({Rid, SrvId}) ->
    db:execute("UPDATE role SET is_online = 1 where "
	       "rid = ? and srv_id = ?",
	       [Rid, SrvId]).

set_offline({Rid, SrvId}) ->
    db:execute("UPDATE role SET is_online = 0 where "
	       "rid = ? and srv_id = ?",
	       [Rid, SrvId]);
set_offline(all) ->
    db:execute("UPDATE role SET is_online = 0", [],
	       1000 * 60).

set_data_lock({Rid, SrvId}, DStatus) ->
    db:execute("UPDATE role SET data_lock = ? where "
	       "rid = ? and srv_id = ?",
	       [DStatus, Rid, SrvId]).

update_power(Role = #role{id = {Rid, SrvId}, lev = Lev,
			  power = Power, max_power = MaxPower,
			  arena_power = ArenaPower,
			  arena_max_power = ArenaMaxPower})
    when Lev >= 5 ->
    case put(last_power_save,
	     {Lev, Power, MaxPower, ArenaPower, ArenaMaxPower})
	of
      {Lev, Power, MaxPower, ArenaPower, ArenaMaxPower} ->
	  skip;
      _ ->
	  role_match:update(Role),
	  guild_member:update(Role, sync),
	  arena_mgr:sync_role(Role, power),
	  arena_champion_mgr:sync_role(Role, power),
	  sky_ladder_mgr:sync_role(Role, power),
	  role_robot:sync_role(Role),
	  invite_code:sync_info(Role),
	  catch
	    db:execute("UPDATE `role` SET power=?, max_power=?, "
		       "arena_power=?, arena_max_power=? WHERE "
		       "rid=? AND srv_id=?",
		       [Power, MaxPower, ArenaPower, ArenaMaxPower, Rid,
			SrvId])
    end,
    ok;
update_power(_Role) -> ok.

sync_reg(#role{s_name = 0}) -> ok;
sync_reg(#role{account = Account,
	       reg_channel = RegChannel, name = Name, lev = Lev,
	       sex = Sex, career = Career, id = {Rid, SrvId}}) ->
    info({push_reg,
	  {{Rid, SrvId}, Account, RegChannel, Name, Lev, Sex,
	   Career}}).

do_push_reg({{Rid, SrvId}, Account, RegChannel, Name,
	     Lev, Sex, Career}) ->
    do_push_reg_1({{Rid, SrvId}, Account, RegChannel, Name,
		   Lev, Sex, Career}),
    do_push_reg_2({{Rid, SrvId}, Account, RegChannel, Name,
		   Lev, Sex, Career});
do_push_reg({{Rid, SrvId}, Account, RegChannel, Name,
	     Lev, Sex, Career, _}) ->
    do_push_reg_2({{Rid, SrvId}, Account, RegChannel, Name,
		   Lev, Sex, Career}).

do_push_reg_1({{Rid, SrvId}, Account, RegChannel, Name,
	       Lev, Sex, Career}) ->
    case game_lib:register_host() of
      "" -> skip;
      undefined -> skip;
      Host ->
	  Url =
	      binary_to_list(util:fbin("http://~s/index.php/role/set",
				       [Host])),
	  AccGroup = login_rpc:acc_group(RegChannel),
	  Key = "tP5^M1r(,<}nc52-<#.q>9m#2",
	  Role = ejson:encode({[{name, Name}, {lev, Lev},
				{rid, Rid}, {srv_id, SrvId}, {sex, Sex},
				{career, Career}, {login_time, date:unixtime()},
				{reg_channel, RegChannel}]}),
	  Sign = util:md5(lists:concat([binary_to_list(Account),
					binary_to_list(Role), Key])),
	  List = [{"account", Account}, {"role", Role},
		  {"sign", Sign}, {acc_group, AccGroup}],
	  Body = game_lib:to_url_body_str(List),
	  catch httpc:request(post,
			      {Url, [], "application/x-www-form-urlencoded",
			       Body},
			      [{timeout, 5000}], [])
    end.

do_push_reg_2({{Rid, SrvId}, Account, RegChannel, Name,
	       Lev, Sex, Career}) ->
    case game_lib:register_host() of
      "regset-sszg.shiyuegame.com" ->
	  Url = "https://register-new-sszg.shiyuegame.com/inde"
		"x.php/role/push",
	  AccGroup = login_rpc:acc_group(RegChannel),
	  Key = "tP5^M1r(,<}nc52-<#.q>9m#2",
	  Role = ejson:encode({[{name, Name}, {lev, Lev},
				{rid, Rid}, {srv_id, SrvId}, {sex, Sex},
				{career, Career}, {login_time, date:unixtime()},
				{reg_channel, RegChannel}]}),
	  Sign = util:md5(lists:concat([binary_to_list(Account),
					binary_to_list(Role), Key])),
	  List = [{"account", Account}, {"role", Role},
		  {"sign", Sign}, {acc_group, AccGroup}],
	  Body = game_lib:to_url_body_str(List),
	  catch httpc:request(post,
			      {Url, [], "application/x-www-form-urlencoded",
			       Body},
			      [{timeout, 5000}], []);
      _ -> skip
    end.

local_fetch(Type, RoleId) ->
    case fetch_base(Type, RoleId) of
      {error, not_exists} -> {error, not_exists};
      {error, _E} -> {error, fetch_failure};
      {ok,
       Role0 = #role{id = Id, account = Acc, login = Login,
		     name = Name, banned_time = BannedTime,
		     interdict_time = InterdictTime, capacity = Capacity}} ->
	  case fetch_ext(Id) of
	    {error, not_exists} -> {ok, first, first_init(Role0)};
	    {error, Else} -> {error, Else};
	    {ok, Role} ->
		NRole = Role#role{timer = #rtimer{}, login = Login,
				  name = Name, account = Acc,
				  banned_time = BannedTime,
				  interdict_time = InterdictTime,
				  capacity = Capacity, misc = #role_misc{},
				  misc_ext = load_misc_ext(RoleId)},
		{ok, normal, NRole}
	  end
    end.

local_save(Type,
	   Role = #role{id = {Rid, _}, type = role, pos = Pos,
			m_friend = MFriend, guild_bag = GuildBag,
			trigger = {TriId, _}}) ->
    R = Role#role{pid = 0, s_event_pid = 0, combat_pid = 0,
		  combat_replay_pid = 0, ui_combat_type = 0,
		  combat_type_list = [],
		  pos =
		      case is_record(Pos, pos) of
			true ->
			    Pos#pos{map_pid = undefined,
				    map_grid_pid = undefined};
			false -> Pos
		      end,
		  login = undefined, timer = undefined, s_looks = [],
		  trigger = {TriId rem 1000000, []}, link = undefined,
		  misc = undefined, misc_ext = undefined,
		  guild_bag = GuildBag#guild_bag{pid = 0},
		  m_friend = MFriend#m_friend{list = []}},
    case Type of
      to_db ->
	  save_base(Role),
	  save_assets(Role),
	  save_misc_ext(Role),
	  case save_to_db(R) of
	    {ok, _} -> clean_cache(Role#role.id);
	    _ -> info({to_db, R#role.id}), dets:insert(tab(Rid), R)
	  end;
      _ -> dets:insert(tab(Rid), R)
    end;
local_save(_Type, _Role) -> ok.

-spec dump(pos_integer(), bitstring()) -> ok |
					  {error, term()}.

dump(Rid, SrvId) ->
    dump(Rid, SrvId,
	 lists:concat([sys_env:get(root), "/role_", Rid, "_",
		       bitstring_to_list(SrvId), ".txt"])).

dump(Rid, SrvId, File) ->
    case local_fetch(by_id, {Rid, SrvId}) of
      {error, Reason} -> {error, Reason};
      {ok, Role} ->
	  case file:open(File, [write, raw]) of
	    {ok, F} ->
		file:write(F, io_lib:format("~p", [Role])),
		file:close(F),
		ok;
	    Err -> Err
	  end
    end.

info(Info) -> role_data ! Info.

cast(Info) -> gen_server:cast(role_data, Info).

call(Info) ->
    case catch gen_server:call(role_data, Info, 10000) of
      {'EXIT', _Call_Err} ->
	  case {whereis(lager_event), whereis(lager_event),
		lager_config:get({lager_event, loglevel}, {0, []})}
	      of
	    {undefined, undefined, _} ->
		fun () -> {error, lager_not_running} end();
	    {undefined, _, _} ->
		fun () -> {error, {sink_not_configured, lager_event}}
		end();
	    {__Pidrole_data218, _,
	     {__Levelrole_data218, __Tracesrole_data218}}
		when __Levelrole_data218 band 8 /= 0 orelse
		       __Tracesrole_data218 /= [] ->
		lager:do_log(error,
			     [{module, role_data}, {function, call},
			      {line, 218}, {pid, pid_to_list(self())},
			      {node, node()}
			      | lager:md()],
			     io_lib:format("call_pid:~w req:~w timeout:~w get_stacktrace:~w",
					   [role_data, Info, 10000,
					    erlang:get_stacktrace()]),
			     none, 4096, 8, __Levelrole_data218,
			     __Tracesrole_data218, lager_event,
			     __Pidrole_data218);
	    _ -> ok
	  end,
	  case _Call_Err of
	    {timeout, _} -> {error, timeout};
	    {noproc, _} -> {error, noproc};
	    {normal, _} -> {error, exit};
	    _ -> {error, _Call_Err}
	  end;
      _Call_Return -> _Call_Return
    end.

start_link() ->
    gen_server:start_link({local, role_data}, role_data, [],
			  []).

init([]) ->
    case {whereis(lager_event), whereis(lager_event),
	  lager_config:get({lager_event, loglevel}, {0, []})}
	of
      {undefined, undefined, _} ->
	  fun () -> {error, lager_not_running} end();
      {undefined, _, _} ->
	  fun () -> {error, {sink_not_configured, lager_event}}
	  end();
      {__Pidrole_data224, _,
       {__Levelrole_data224, __Tracesrole_data224}}
	  when __Levelrole_data224 band 64 /= 0 orelse
		 __Tracesrole_data224 /= [] ->
	  lager:do_log(info,
		       [{module, role_data}, {function, init}, {line, 224},
			{pid, pid_to_list(self())}, {node, node()}
			| lager:md()],
		       io_lib:format("[~w] 正在启动...", [role_data]), none, 4096,
		       64, __Levelrole_data224, __Tracesrole_data224,
		       lager_event, __Pidrole_data224);
      _ -> ok
    end,
    process_flag(trap_exit, true),
    open_dets(20),
    sync_to_db(20),
    {ok, MaxId0} = db:get_one("select max(rid) from role",
			      [], 30000),
    MaxId1 = sys_env:get(role_max_rid, 0),
    sys_env:set(role_max_rid,
		max(util:if_undefined(MaxId0, 0), MaxId1)),
    d_ets_lib:new_d_ets(role_misc_ext,
			"dets/role_misc_ext.dets", 1, set),
    d_ets_lib:new_d_ets(role_face_verify,
			"dets/role_face_verify.dets", 1, set),
    d_ets_lib:load_dets_to_ets(role_face_verify, undefined),
    State = #state{},
    case {whereis(lager_event), whereis(lager_event),
	  lager_config:get({lager_event, loglevel}, {0, []})}
	of
      {undefined, undefined, _} ->
	  fun () -> {error, lager_not_running} end();
      {undefined, _, _} ->
	  fun () -> {error, {sink_not_configured, lager_event}}
	  end();
      {__Pidrole_data235, _,
       {__Levelrole_data235, __Tracesrole_data235}}
	  when __Levelrole_data235 band 64 /= 0 orelse
		 __Tracesrole_data235 /= [] ->
	  lager:do_log(info,
		       [{module, role_data}, {function, init}, {line, 235},
			{pid, pid_to_list(self())}, {node, node()}
			| lager:md()],
		       io_lib:format("[~w] 启动完成", [role_data]), none, 4096, 64,
		       __Levelrole_data235, __Tracesrole_data235, lager_event,
		       __Pidrole_data235);
      _ -> ok
    end,
    {ok, State}.

handle_call(_Request, _From, State) -> {noreply, State}.

handle_cast(_Msg, State) -> {noreply, State}.

handle_info({load_role_data, Num}, State) ->
    Now = date:unixtime(),
    Time = Now - 86400 * 30,
    case db:get_all("select rid, srv_id  from role where "
		    "login_time > ? and lev >= ? and power "
		    "> ? order by power desc limit ?",
		    [Time, 30, 50000, Num], 60000)
	of
      {ok, L} ->
	  put(load_role_data, L),
	  case {whereis(lager_event), whereis(lager_event),
		lager_config:get({lager_event, loglevel}, {0, []})}
	      of
	    {undefined, undefined, _} ->
		fun () -> {error, lager_not_running} end();
	    {undefined, _, _} ->
		fun () -> {error, {sink_not_configured, lager_event}}
		end();
	    {__Pidrole_data250, _,
	     {__Levelrole_data250, __Tracesrole_data250}}
		when __Levelrole_data250 band 64 /= 0 orelse
		       __Tracesrole_data250 /= [] ->
		lager:do_log(info,
			     [{module, role_data}, {function, handle_info},
			      {line, 250}, {pid, pid_to_list(self())},
			      {node, node()}
			      | lager:md()],
			     io_lib:format("开始加载玩家数据:~w", [length(L)]), none,
			     4096, 64, __Levelrole_data250,
			     __Tracesrole_data250, lager_event,
			     __Pidrole_data250);
	    _ -> ok
	  end,
	  util:set_ms_timer(load_role_data_timer,
			    util:rand(1, 3000), do_load_role_data);
      _ -> skip
    end,
    {noreply, State};
handle_info(do_load_role_data, State) ->
    case erase(load_role_data) of
      [[Rid, SrvId] | T] ->
	  put(load_role_data, T),
	  catch sys_load_role_data(Rid, SrvId),
	  util:set_ms_timer(load_role_data_timer,
			    util:rand(500, 5000), do_load_role_data);
      _ ->
	  case {whereis(lager_event), whereis(lager_event),
		lager_config:get({lager_event, loglevel}, {0, []})}
	      of
	    {undefined, undefined, _} ->
		fun () -> {error, lager_not_running} end();
	    {undefined, _, _} ->
		fun () -> {error, {sink_not_configured, lager_event}}
		end();
	    {__Pidrole_data261, _,
	     {__Levelrole_data261, __Tracesrole_data261}}
		when __Levelrole_data261 band 64 /= 0 orelse
		       __Tracesrole_data261 /= [] ->
		lager:do_log(info,
			     [{module, role_data}, {function, handle_info},
			      {line, 261}, {pid, pid_to_list(self())},
			      {node, node()}
			      | lager:md()],
			     "加载数据完成", none, 4096, 64, __Levelrole_data261,
			     __Tracesrole_data261, lager_event,
			     __Pidrole_data261);
	    _ -> ok
	  end
    end,
    {noreply, State};
handle_info(auto_push_reg, State) ->
    util:set_timer(push_reg_timer, util:rand(1, 300),
		   do_auto_push_reg),
    {noreply, State};
handle_info(do_auto_push_reg,
	    State = #state{reg_list = RegQ}) ->
    case
      db:get_all("select account, name, lev, sex, career, "
		 "rid, srv_id, reg_channel from role where "
		 "vip_lev > 0 or lev > 30 or login_time "
		 "> 1582992000",
		 [], 60000)
	of
      {ok, L} ->
	  L1 = [{{Rid, SrvId}, Account, RegChannel, Name, Lev,
		 Sex, Career, auto_push}
		|| [Account, Name, Lev, Sex, Career, Rid, SrvId,
		    RegChannel]
		       <- L],
	  case RegQ of
	    {[], []} -> erlang:send_after(500, self(), do_push_reg);
	    _ -> pass
	  end,
	  case {whereis(lager_event), whereis(lager_event),
		lager_config:get({lager_event, loglevel}, {0, []})}
	      of
	    {undefined, undefined, _} ->
		fun () -> {error, lager_not_running} end();
	    {undefined, _, _} ->
		fun () -> {error, {sink_not_configured, lager_event}}
		end();
	    {__Pidrole_data278, _,
	     {__Levelrole_data278, __Tracesrole_data278}}
		when __Levelrole_data278 band 64 /= 0 orelse
		       __Tracesrole_data278 /= [] ->
		lager:do_log(info,
			     [{module, role_data}, {function, handle_info},
			      {line, 278}, {pid, pid_to_list(self())},
			      {node, node()}
			      | lager:md()],
			     io_lib:format("auto_push_reg=====~w",
					   [length(L1)]),
			     none, 4096, 64, __Levelrole_data278,
			     __Tracesrole_data278, lager_event,
			     __Pidrole_data278);
	    _ -> ok
	  end,
	  {noreply, State#state{reg_list = {[], L1}}};
      _Err ->
	  case {whereis(lager_event), whereis(lager_event),
		lager_config:get({lager_event, loglevel}, {0, []})}
	      of
	    {undefined, undefined, _} ->
		fun () -> {error, lager_not_running} end();
	    {undefined, _, _} ->
		fun () -> {error, {sink_not_configured, lager_event}}
		end();
	    {__Pidrole_data281, _,
	     {__Levelrole_data281, __Tracesrole_data281}}
		when __Levelrole_data281 band 8 /= 0 orelse
		       __Tracesrole_data281 /= [] ->
		lager:do_log(error,
			     [{module, role_data}, {function, handle_info},
			      {line, 281}, {pid, pid_to_list(self())},
			      {node, node()}
			      | lager:md()],
			     io_lib:format("auto_push_reg==err=====~w", [_Err]),
			     none, 4096, 8, __Levelrole_data281,
			     __Tracesrole_data281, lager_event,
			     __Pidrole_data281);
	    _ -> ok
	  end,
	  {noreply, State}
    end;
handle_info({push_reg, Info},
	    State = #state{reg_list = RegQ}) ->
    case RegQ of
      {[], []} -> erlang:send_after(500, self(), do_push_reg);
      _ -> pass
    end,
    {noreply, State#state{reg_list = queue:in(Info, RegQ)}};
handle_info(do_push_reg,
	    State = #state{reg_list = {[], []}}) ->
    {noreply, State};
handle_info(do_push_reg,
	    State = #state{reg_list = RegQ}) ->
    {{value, Info}, NewQ} = queue:out(RegQ),
    do_push_reg(Info),
    case time() of
      {0, Min, _} when Min < 10 ->
	  erlang:send_after(util:rand(1000, 10000), self(),
			    do_push_reg);
      {0, Min, _} when Min < 20 ->
	  erlang:send_after(util:rand(100, 2000), self(),
			    do_push_reg);
      _ -> erlang:send_after(100, self(), do_push_reg)
    end,
    {noreply, State#state{reg_list = NewQ}};
handle_info({to_db, Rid},
	    State = #state{list = List}) ->
    NewList = [Rid | lists:delete(Rid, List)],
    case List of
      [] -> erlang:send_after(30000, self(), to_db);
      _ -> skip
    end,
    {noreply, State#state{list = NewList}};
handle_info(to_db,
	    State = #state{list = [{Rid, SrvId} | List]}) ->
    case dets:lookup(tab(Rid), {Rid, SrvId}) of
      [Role = #role{}] ->
	  case save_to_db(Role) of
	    {ok, _} -> clean_cache(Role#role.id);
	    _ -> self() ! {to_db, {Rid, SrvId}}
	  end;
      _ -> skip
    end,
    erlang:send_after(30000, self(), to_db),
    {noreply, State#state{list = List}};
handle_info(_Info, State) -> {noreply, State}.

terminate(_Reason, _State) ->
    case {whereis(lager_event), whereis(lager_event),
	  lager_config:get({lager_event, loglevel}, {0, []})}
	of
      {undefined, undefined, _} ->
	  fun () -> {error, lager_not_running} end();
      {undefined, _, _} ->
	  fun () -> {error, {sink_not_configured, lager_event}}
	  end();
      {__Pidrole_data331, _,
       {__Levelrole_data331, __Tracesrole_data331}}
	  when __Levelrole_data331 band 64 /= 0 orelse
		 __Tracesrole_data331 /= [] ->
	  lager:do_log(info,
		       [{module, role_data}, {function, terminate},
			{line, 331}, {pid, pid_to_list(self())}, {node, node()}
			| lager:md()],
		       io_lib:format("开始关闭", []), none, 4096, 64,
		       __Levelrole_data331, __Tracesrole_data331, lager_event,
		       __Pidrole_data331);
      _ -> ok
    end,
    sync_to_db(20),
    sys_env:save(role_max_rid),
    case {whereis(lager_event), whereis(lager_event),
	  lager_config:get({lager_event, loglevel}, {0, []})}
	of
      {undefined, undefined, _} ->
	  fun () -> {error, lager_not_running} end();
      {undefined, _, _} ->
	  fun () -> {error, {sink_not_configured, lager_event}}
	  end();
      {__Pidrole_data334, _,
       {__Levelrole_data334, __Tracesrole_data334}}
	  when __Levelrole_data334 band 64 /= 0 orelse
		 __Tracesrole_data334 /= [] ->
	  lager:do_log(info,
		       [{module, role_data}, {function, terminate},
			{line, 334}, {pid, pid_to_list(self())}, {node, node()}
			| lager:md()],
		       io_lib:format("关闭完成", []), none, 4096, 64,
		       __Levelrole_data334, __Tracesrole_data334, lager_event,
		       __Pidrole_data334);
      _ -> ok
    end,
    ok.

code_change(_OldVsn, State, _Extra) -> {ok, State}.

tab(1) -> role_data_1;
tab(2) -> role_data_2;
tab(3) -> role_data_3;
tab(4) -> role_data_4;
tab(5) -> role_data_5;
tab(6) -> role_data_6;
tab(7) -> role_data_7;
tab(8) -> role_data_8;
tab(9) -> role_data_9;
tab(10) -> role_data_10;
tab(11) -> role_data_11;
tab(12) -> role_data_12;
tab(13) -> role_data_13;
tab(14) -> role_data_14;
tab(15) -> role_data_15;
tab(16) -> role_data_16;
tab(17) -> role_data_17;
tab(18) -> role_data_18;
tab(19) -> role_data_19;
tab(20) -> role_data_20;
tab(N) when N > 20 -> tab(N rem 20 + 1).

open_dets(0) -> ok;
open_dets(N) ->
    dets:open_file(tab(N),
		   [{file, lists:concat(["./dets/role_", N, ".dets"])},
		    {keypos, #role.id}, {type, set}]),
    open_dets(N - 1).

sync_to_db(0) ->
    case {whereis(lager_event), whereis(lager_event),
	  lager_config:get({lager_event, loglevel}, {0, []})}
	of
      {undefined, undefined, _} ->
	  fun () -> {error, lager_not_running} end();
      {undefined, _, _} ->
	  fun () -> {error, {sink_not_configured, lager_event}}
	  end();
      {__Pidrole_data370, _,
       {__Levelrole_data370, __Tracesrole_data370}}
	  when __Levelrole_data370 band 64 /= 0 orelse
		 __Tracesrole_data370 /= [] ->
	  lager:do_log(info,
		       [{module, role_data}, {function, sync_to_db},
			{line, 370}, {pid, pid_to_list(self())}, {node, node()}
			| lager:md()],
		       "所有DETS中的所有角色数据已经执行同步操作", none, 4096, 64,
		       __Levelrole_data370, __Tracesrole_data370, lager_event,
		       __Pidrole_data370);
      _ -> ok
    end;
sync_to_db(N) ->
    Name = tab(N),
    case dets:first(Name) of
      '$end_of_table' ->
	  case {whereis(lager_event), whereis(lager_event),
		lager_config:get({lager_event, loglevel}, {0, []})}
	      of
	    {undefined, undefined, _} ->
		fun () -> {error, lager_not_running} end();
	    {undefined, _, _} ->
		fun () -> {error, {sink_not_configured, lager_event}}
		end();
	    {__Pidrole_data374, _,
	     {__Levelrole_data374, __Tracesrole_data374}}
		when __Levelrole_data374 band 64 /= 0 orelse
		       __Tracesrole_data374 /= [] ->
		lager:do_log(info,
			     [{module, role_data}, {function, sync_to_db},
			      {line, 374}, {pid, pid_to_list(self())},
			      {node, node()}
			      | lager:md()],
			     io_lib:format("[~ts]中没有角色数据需要同步到数据库", [Name]),
			     none, 4096, 64, __Levelrole_data374,
			     __Tracesrole_data374, lager_event,
			     __Pidrole_data374);
	    _ -> ok
	  end;
      _ ->
	  put(role_ids, []),
	  put(load_error, false),
	  dets:traverse(Name,
			fun (Term) ->
				case role_data_convert:do(Term, []) of
				  {error, Err} ->
				      case {whereis(lager_event),
					    whereis(lager_event),
					    lager_config:get({lager_event,
							      loglevel},
							     {0, []})}
					  of
					{undefined, undefined, _} ->
					    fun () -> {error, lager_not_running}
					    end();
					{undefined, _, _} ->
					    fun () ->
						    {error,
						     {sink_not_configured,
						      lager_event}}
					    end();
					{__Pidrole_data382, _,
					 {__Levelrole_data382,
					  __Tracesrole_data382}}
					    when __Levelrole_data382 band 8 /= 0
						   orelse
						   __Tracesrole_data382 /= [] ->
					    lager:do_log(error,
							 [{module, role_data},
							  {function,
							   sync_to_db},
							  {line, 382},
							  {pid,
							   pid_to_list(self())},
							  {node, node()}
							  | lager:md()],
							 io_lib:format("[~ts]同步磁盘缓存数据到数据库时发生异常: ~w",
								       [Name,
									Err]),
							 none, 4096, 8,
							 __Levelrole_data382,
							 __Tracesrole_data382,
							 lager_event,
							 __Pidrole_data382);
					_ -> ok
				      end,
				      put(load_error, true);
				  {ok, Role} ->
				      case save_to_db(Role) of
					{ok, _} ->
					    put(role_ids,
						[Role#role.id | get(role_ids)]);
					{error, Err} ->
					    case {whereis(lager_event),
						  whereis(lager_event),
						  lager_config:get({lager_event,
								    loglevel},
								   {0, []})}
						of
					      {undefined, undefined, _} ->
						  fun () ->
							  {error,
							   lager_not_running}
						  end();
					      {undefined, _, _} ->
						  fun () ->
							  {error,
							   {sink_not_configured,
							    lager_event}}
						  end();
					      {__Pidrole_data388, _,
					       {__Levelrole_data388,
						__Tracesrole_data388}}
						  when __Levelrole_data388 band
							 8
							 /= 0
							 orelse
							 __Tracesrole_data388 /=
							   [] ->
						  lager:do_log(error,
							       [{module,
								 role_data},
								{function,
								 sync_to_db},
								{line, 388},
								{pid,
								 pid_to_list(self())},
								{node, node()}
								| lager:md()],
							       io_lib:format("[~ts]中角色数据[~ts]同步到数据库时发生异常: ~w",
									     [Name,
									      Role#role.name,
									      Err]),
							       none, 4096, 8,
							       __Levelrole_data388,
							       __Tracesrole_data388,
							       lager_event,
							       __Pidrole_data388);
					      _ -> ok
					    end,
					    put(load_error, true)
				      end
				end,
				continue
			end),
	  case erase(load_error) of
	    true ->
		Num = length([clean_cache(RoleId)
			      || RoleId <- erase(role_ids)]),
		case {whereis(lager_event), whereis(lager_event),
		      lager_config:get({lager_event, loglevel}, {0, []})}
		    of
		  {undefined, undefined, _} ->
		      fun () -> {error, lager_not_running} end();
		  {undefined, _, _} ->
		      fun () -> {error, {sink_not_configured, lager_event}}
		      end();
		  {__Pidrole_data398, _,
		   {__Levelrole_data398, __Tracesrole_data398}}
		      when __Levelrole_data398 band 64 /= 0 orelse
			     __Tracesrole_data398 /= [] ->
		      lager:do_log(info,
				   [{module, role_data}, {function, sync_to_db},
				    {line, 398}, {pid, pid_to_list(self())},
				    {node, node()}
				    | lager:md()],
				   io_lib:format("[~ts]中部分角色数据已经执行同步操作:~w",
						 [Name, Num]),
				   none, 4096, 64, __Levelrole_data398,
				   __Tracesrole_data398, lager_event,
				   __Pidrole_data398);
		  _ -> ok
		end;
	    _ ->
		dets:delete_all_objects(Name),
		case {whereis(lager_event), whereis(lager_event),
		      lager_config:get({lager_event, loglevel}, {0, []})}
		    of
		  {undefined, undefined, _} ->
		      fun () -> {error, lager_not_running} end();
		  {undefined, _, _} ->
		      fun () -> {error, {sink_not_configured, lager_event}}
		      end();
		  {__Pidrole_data401, _,
		   {__Levelrole_data401, __Tracesrole_data401}}
		      when __Levelrole_data401 band 64 /= 0 orelse
			     __Tracesrole_data401 /= [] ->
		      lager:do_log(info,
				   [{module, role_data}, {function, sync_to_db},
				    {line, 401}, {pid, pid_to_list(self())},
				    {node, node()}
				    | lager:md()],
				   io_lib:format("[~ts]中所有角色数据已经执行同步操作",
						 [Name]),
				   none, 4096, 64, __Levelrole_data401,
				   __Tracesrole_data401, lager_event,
				   __Pidrole_data401);
		  _ -> ok
		end
	  end
    end,
    sync_to_db(N - 1).

save_to_db(R = #role{id = {Rid, SrvId}, name = Name,
		     guild_bag = GuildBag}) ->
    case db:execute("replace into role_ext (rid, srv_id, "
		    "data, guild_bag) values(?, ?, ?, ?)",
		    [Rid, SrvId,
		     util:term_to_string(R#role{guild_bag = undefined}),
		     util:term_to_string(GuildBag)])
	of
      {ok, Ret} -> {ok, Ret};
      {error, Err} ->
	  case {whereis(lager_event), whereis(lager_event),
		lager_config:get({lager_event, loglevel}, {0, []})}
	      of
	    {undefined, undefined, _} ->
		fun () -> {error, lager_not_running} end();
	    {undefined, _, _} ->
		fun () -> {error, {sink_not_configured, lager_event}}
		end();
	    {__Pidrole_data412, _,
	     {__Levelrole_data412, __Tracesrole_data412}}
		when __Levelrole_data412 band 8 /= 0 orelse
		       __Tracesrole_data412 /= [] ->
		lager:do_log(error,
			     [{module, role_data}, {function, save_to_db},
			      {line, 412}, {pid, pid_to_list(self())},
			      {node, node()}
			      | lager:md()],
			     io_lib:format("[~s]的角色数据存入数据库时发生异常: ~w",
					   [Name, Err]),
			     none, 4096, 8, __Levelrole_data412,
			     __Tracesrole_data412, lager_event,
			     __Pidrole_data412);
	    _ -> ok
	  end,
	  {error, Err}
    end.

save_base(Role = #role{id = {Rid, SrvId},
		       assets = Assets}) ->
    BaseL = [{banned_time, Role#role.banned_time},
	     {interdict_time, Role#role.interdict_time},
	     {name, Role#role.name}, {sex, Role#role.sex},
	     {career, Role#role.career}, {lev, Role#role.lev},
	     {login_time, (Role#role.login)#login.login_time},
	     {logout_time, (Role#role.login)#login.logout_time},
	     {login_ip, util:ip_to_binary((Role#role.link)#link.ip)},
	     {is_online, Role#role.is_online},
	     {power, Role#role.power},
	     {max_power, Role#role.max_power},
	     {arena_power, Role#role.arena_power},
	     {arena_max_power, Role#role.arena_max_power},
	     {identity, Role#role.identity},
	     {face_id, Role#role.face_id},
	     {data_lock, Role#role.data_lock},
	     {device_id, Role#role.device_id},
	     {device_type, Role#role.device_type},
	     {getui_cid, Role#role.getui_cid},
	     {idfa, Role#role.idfa}, {os_name, Role#role.os_name},
	     {app_name, Role#role.app_name},
	     {package_name, Role#role.package_name},
	     {package_version, Role#role.package_ver},
	     {capacity, Role#role.capacity},
	     {vip_lev, (Role#role.m_vip)#m_vip.lev},
	     {gold_acc, Assets#assets.gold_acc},
	     {gold, Assets#assets.gold},
	     {net_type, Role#role.net_type},
	     {carrier_name, Role#role.carrier_name},
	     {os_ver, Role#role.os_ver}],
    case db:update(role, BaseL,
		   [{rid, Rid}, {srv_id, SrvId}])
	of
      {error, Why} ->
	  case {whereis(lager_event), whereis(lager_event),
		lager_config:get({lager_event, loglevel}, {0, []})}
	      of
	    {undefined, undefined, _} ->
		fun () -> {error, lager_not_running} end();
	    {undefined, _, _} ->
		fun () -> {error, {sink_not_configured, lager_event}}
		end();
	    {__Pidrole_data454, _,
	     {__Levelrole_data454, __Tracesrole_data454}}
		when __Levelrole_data454 band 8 /= 0 orelse
		       __Tracesrole_data454 /= [] ->
		lager:do_log(error,
			     [{module, role_data}, {function, save_base},
			      {line, 454}, {pid, pid_to_list(self())},
			      {node, node()}
			      | lager:md()],
			     io_lib:format("~w,~s 更新基本信息失败:~w, ~w",
					   [Rid, SrvId, BaseL, Why]),
			     none, 4096, 8, __Levelrole_data454,
			     __Tracesrole_data454, lager_event,
			     __Pidrole_data454);
	    _ -> ok
	  end,
	  {error, Why};
      {ok, _Affected} -> ok
    end.

save_assets(_Role = #role{id = {Rid, SrvId},
			  assets = Assets}) ->
    KVList = [{rid, Rid}, {srv_id, SrvId},
	      {exp, Assets#assets.exp}, {coin, Assets#assets.coin},
	      {gold, Assets#assets.gold},
	      {gold_acc, Assets#assets.gold_acc},
	      {coupon, Assets#assets.red_gold}],
    case db:replace(role_assets, KVList) of
      {error, Why} -> {error, Why};
      {ok, _} -> ok
    end.

save_misc_ext(#role{id = RoleId, misc_ext = Ext}) ->
    case maps:size(Ext) > 0 of
      true ->
	  d_ets_lib:save_d_ets(role_misc_ext, {RoleId, Ext});
      _ -> ok
    end.

clean_cache({Rid, _SrvId} = RoleId) ->
    dets:delete(tab(Rid), RoleId).

fetch_base(by_id, {Rid, SrvId}) ->
    Sql = "select rid, srv_id, banned_time, interdict_ti"
	  "me, channel, reg_channel, account, name, "
	  "sex, career, lev, login_time, logout_time, "
	  "identity,reg_ip, face_id, reg_time, "
	  "data_lock, capacity, reg_idfa, reg_os_name, "
	  "reg_app_name, reg_package_name, reg_package_v"
	  "ersion from role where rid = ? and srv_id "
	  "= ?",
    do_fetch_base(Sql, [Rid, SrvId]);
fetch_base(by_name, Name) ->
    Sql = "select rid, srv_id, banned_time, interdict_ti"
	  "me, channel, reg_channel, account, name, "
	  "sex, career, lev, login_time, logout_time, "
	  "identity,reg_ip, face_id, reg_time, "
	  "data_lock, capacity, reg_idfa, reg_os_name, "
	  "reg_app_name, reg_package_name, reg_package_v"
	  "ersion from role where name = binary "
	  "?",
    do_fetch_base(Sql, [Name]).

do_fetch_base(Sql, Args) ->
    case db:get_row(Sql, Args) of
      {error, undefined} -> {error, not_exists};
      {error, Why} -> {error, Why};
      {ok,
       [Id, SrvId, BannedTime, InterdictTime, Channel,
	RegChannel, Acc, NameReal, Sex, Career, Lev, LoginTime,
	LogoutTime, Identity, RegIp, FaceId, RegTime, LockTs,
	Capacity, RegIdfa, RegOsName, RegAppName,
	RegPackageName, RegPackageVer]} ->
	  {ok,
	   #role{id = {Id, SrvId}, banned_time = BannedTime,
		 interdict_time = InterdictTime, channel = Channel,
		 reg_channel = RegChannel, account = Acc,
		 name = NameReal, sex = Sex, career = Career, lev = Lev,
		 login =
		     #login{prev_login_time = LoginTime,
			    prev_logout_time = LogoutTime},
		 identity = Identity, reg_ip = RegIp, face_id = FaceId,
		 reg_time = RegTime, data_lock = LockTs,
		 capacity = Capacity, reg_idfa = RegIdfa,
		 reg_os_name = RegOsName, reg_app_name = RegAppName,
		 reg_package_name = RegPackageName,
		 reg_package_ver = RegPackageVer}}
    end.

fetch_ext_dets({Rid, SrvId}) ->
    case catch dets:lookup(tab(Rid), {Rid, SrvId}) of
      [Term] when is_tuple(Term) ->
	  role_data_convert:do(Term, []);
      [] -> {error, not_exists};
      Err ->
	  case {whereis(lager_event), whereis(lager_event),
		lager_config:get({lager_event, loglevel}, {0, []})}
	      of
	    {undefined, undefined, _} ->
		fun () -> {error, lager_not_running} end();
	    {undefined, _, _} ->
		fun () -> {error, {sink_not_configured, lager_event}}
		end();
	    {__Pidrole_data523, _,
	     {__Levelrole_data523, __Tracesrole_data523}}
		when __Levelrole_data523 band 8 /= 0 orelse
		       __Tracesrole_data523 /= [] ->
		lager:do_log(error,
			     [{module, role_data}, {function, fetch_ext_dets},
			      {line, 523}, {pid, pid_to_list(self())},
			      {node, node()}
			      | lager:md()],
			     io_lib:format("角色数据磁盘缓存异常: ~w", [Err]), none, 4096,
			     8, __Levelrole_data523, __Tracesrole_data523,
			     lager_event, __Pidrole_data523);
	    _ -> ok
	  end,
	  {error, role_cache_exception}
    end.

fetch_ext({Rid, SrvId}) when is_integer(Rid) ->
    case fetch_ext_dets({Rid, SrvId}) of
      {error, not_exists} ->
	  case db:get_row("select data, guild_bag from role_ext "
			  "where rid = ? and srv_id = ?",
			  [Rid, SrvId])
	      of
	    {error, undefined} -> {error, not_exists};
	    {ok, [Data, GuildData]} ->
		case {util:string_to_term(Data),
		      util:string_to_term(GuildData)}
		    of
		  {{error, Why}, _} ->
		      case {whereis(lager_event), whereis(lager_event),
			    lager_config:get({lager_event, loglevel}, {0, []})}
			  of
			{undefined, undefined, _} ->
			    fun () -> {error, lager_not_running} end();
			{undefined, _, _} ->
			    fun () ->
				    {error, {sink_not_configured, lager_event}}
			    end();
			{__Pidrole_data536, _,
			 {__Levelrole_data536, __Tracesrole_data536}}
			    when __Levelrole_data536 band 8 /= 0 orelse
				   __Tracesrole_data536 /= [] ->
			    lager:do_log(error,
					 [{module, role_data},
					  {function, fetch_ext}, {line, 536},
					  {pid, pid_to_list(self())},
					  {node, node()}
					  | lager:md()],
					 io_lib:format("~w的扩展数据无法正确转换成term(): ~w",
						       [{Rid, SrvId}, Why]),
					 none, 4096, 8, __Levelrole_data536,
					 __Tracesrole_data536, lager_event,
					 __Pidrole_data536);
			_ -> ok
		      end,
		      {error, fetch_failure};
		  {_, {error, Why}} ->
		      case {whereis(lager_event), whereis(lager_event),
			    lager_config:get({lager_event, loglevel}, {0, []})}
			  of
			{undefined, undefined, _} ->
			    fun () -> {error, lager_not_running} end();
			{undefined, _, _} ->
			    fun () ->
				    {error, {sink_not_configured, lager_event}}
			    end();
			{__Pidrole_data539, _,
			 {__Levelrole_data539, __Tracesrole_data539}}
			    when __Levelrole_data539 band 8 /= 0 orelse
				   __Tracesrole_data539 /= [] ->
			    lager:do_log(error,
					 [{module, role_data},
					  {function, fetch_ext}, {line, 539},
					  {pid, pid_to_list(self())},
					  {node, node()}
					  | lager:md()],
					 io_lib:format("~w的扩展数据[guild_bag]无法正确转换成term(): ~w",
						       [{Rid, SrvId}, Why]),
					 none, 4096, 8, __Levelrole_data539,
					 __Tracesrole_data539, lager_event,
					 __Pidrole_data539);
			_ -> ok
		      end,
		      {error, fetch_failure};
		  {{ok, Term}, {ok, G}} ->
		      role_data_convert:do(Term, [{guild_bag, G}])
		end;
	    {error, Err} -> {error, Err}
	  end;
      Ret -> Ret
    end.

load_misc_ext(RoleId) ->
    case ets:lookup(role_misc_ext, RoleId) of
      [{RoleId, Ext}] -> Ext;
      _ ->
	  case dets:lookup(role_misc_ext, RoleId) of
	    [{RoleId, Ext}] ->
		ets:insert(role_misc_ext, {RoleId, Ext}), Ext;
	    _ -> #{}
	  end
    end.

first_init(Role = #role{id = {_, SrvId},
			career = _Career}) ->
    L = [P | _] = string_util:explode(SrvId, "_"),
    P1 = list_to_binary(P),
    R1 = Role#role{type = role, platform = P1,
		   zone_id = list_to_integer(lists:last(L)), lev = 1,
		   assets = #assets{ver = 15}, timer = #rtimer{},
		   guild_bag = #guild_bag{}, misc = #role_misc{},
		   face_id = role_face:def_face(Role#role{platform = P1}),
		   partner_bag = partner:init(), p_bag = package:init(bag),
		   p_eqm = package:init(eqm), pet_bag = package:init(pet),
		   p_home = package:init(home), m_var = var:init(),
		   m_charge = charge:init(), m_drama = drama:init(),
		   m_quest = quest:init(), m_friend = friend:init(),
		   m_formation = formation_lib:init(Role),
		   m_arena = arena:init(), m_feat = feat:init(),
		   m_checkin = checkin:init(), m_vip = vip:init(),
		   m_buff = role_buff:init(), m_exchange = exchange:init(),
		   m_avatar = avatar:init(), m_say = say:init(),
		   m_look = role_looks:init(), m_dungeon = dungeon:init(),
		   m_boss = boss:init(), m_recruit = recruit:init(),
		   m_honor = honor:init(), m_adventure = adventure:init(),
		   m_lev_gift = lev_gift:init(),
		   m_power_gift = power_gift:init(), m_star = star:init(),
		   m_star_tower = star_tower:init(),
		   m_market_silver = market_silver:init(),
		   m_wish = convert:init_wish(),
		   m_convert = convert:init(),
		   m_login_days = login_days:init(),
		   m_guild_dun = guild_dun_lib:init(),
		   m_star_divination = star_divination:init(),
		   m_month_card = month_card:init(),
		   m_guild_skill = guild_skill:init(),
		   m_endless = endless:init(),
		   m_dial = holiday_dial:init(),
		   m_days_ranks = days_rank:init(),
		   m_escort = escort:init(),
		   m_dun_stone = dungeon_stone:init(),
		   m_hallows = hallows:init(),
		   m_day_goals = day_goals:init(),
		   m_guild_quest = guild_quest:init(),
		   m_recruit_award = recruit_award:init(),
		   m_sky_ladder = sky_ladder:init(),
		   m_shipping = shipping:init(),
		   m_expedition = expedition:init(),
		   m_star_gift = star_gift:init(),
		   m_privilege = privilege:init(),
		   m_month_fund = month_fund:init(),
		   m_lanterm_festival = holiday_lanterm_festival:init(),
		   m_lanterm_adventure = holiday_lanterm_adventure:init(),
		   m_lanterm_adventure1 =
		       holiday_lanterm_adventure1:init(),
		   m_lanterm_adventure2 =
		       holiday_lanterm_adventure2:init(),
		   m_lanterm_adventure3 =
		       holiday_lanterm_adventure3:init(),
		   m_invite_code = invite_code:init(),
		   m_arena_elite = arena_elite_lib:init(), misc_ext = #{},
		   m_element_temple = element_temple:init(),
		   m_halidom = halidom:init(),
		   m_holiday_dial = holiday_dial2:init(),
		   m_break_egg = holiday_break_egg:init(),
		   m_welfare = welfare:init(),
		   m_dun_heaven = dungeon_heaven_lib:init(),
		   m_holiday_boss = holiday_boss:init(),
		   m_war_order = holiday_war_order:init(),
		   m_holiday_holy = holiday_holy_eqm:init(),
		   m_week_card = week_card:init(),
		   m_holy_eqm_set = holy_eqm_set:init(),
		   m_arena_cluster = arena_cluster:init(),
		   m_holiday_snatch = holiday_snatch_lib:init(),
		   m_holiday_accumulate = holiday_accumulate:init(),
		   m_room = role_room:init(),
		   m_room_feat = room_feat:init(),
		   m_holiday_boss_new = holiday_boss_new:init(),
		   m_holiday_return = holiday_return:init(),
		   m_holiday_return_feat = holiday_return_feat:init(),
		   m_holiday_return_sign = holiday_return_sign:init(),
		   m_room_grow = room_grow:init(), m_home = home:init(),
		   m_home_pet = home_pet_lib:init(),
		   backdrop_id = role_misc:def_backdrop(),
		   m_holiday_predict = holiday_predict:init(),
		   m_holiday_personal_gift = holiday_personal_gift:init(),
		   m_resonate = resonate_lib:init(),
		   m_resonate_extract = resonate_extract:init(),
		   m_sprite_hatch = sprite_hatch:init(),
		   m_sprite_tree = sprite_tree:init(),
		   m_holiday_term_begins = holiday_term_begins:init(),
		   m_holiday_petard = holiday_petard:init(),
		   m_encounter = encounter:init(),
		   m_holiday_merge_goal = holiday_merge_goal_mgr:init(),
		   m_arena_team = arena_team_lib:init(),
		   m_monopoly_maps = monopoly_maps:init(),
		   m_training_camp = training_camp:init(),
		   m_weekly = role_weekly:init(),
		   m_arena_peak_champion = arena_peak_champion_lib:init(),
		   m_arena_elite_war_order = arena_elite_war_order:init(),
		   m_holiday_fire_gift = holiday_fire_gift:init(),
		   m_holiday_personal_fire_gift =
		       holiday_personal_fire_gift:init(),
		   m_secret_dun = secret_dun:init(),
		   m_holiday_return_new = holiday_return_new:init(),
		   m_holiday_charge_rebate = holiday_charge_rebate:init(),
		   m_holiday_charge_reset = holiday_charge_reset:init(),
		   m_holiday_optional_lottery =
		       holiday_optional_lottery:init(),
		   m_holiday_lucky_dog = holiday_lucky_dog_lib:init(),
		   m_holiday_nian = holiday_nian:init(),
		   m_holiday_time_award = holiday_time_award:init(),
		   m_holiday_valentines = holiday_valentines:init(),
		   m_planes = planes:init(),
		   m_planes_war_order = planes_war_order:init(),
		   m_new_war_order = holiday_new_war_order:init(),
		   m_face = role_face:init(),
		   m_subscriber = subscriber:init(),
		   m_holiday_dime = holiday_dime:init(),
		   m_holiday_valentine_boss =
		       holiday_valentine_boss:init(),
		   m_personal_push = personal_push_gift:init(),
		   m_holiday_new_week_card = holiday_new_week_card:init(),
		   m_holiday_arena_team = holiday_arena_team_lib:init(),
		   m_holiday_practise_tower =
		       holiday_practise_tower_lib:init()},
    case P1 == <<"verifyios">> of
      true -> partner:init_role_partner(R1);
      _ -> R1
    end.


