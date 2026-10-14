-file("data/formation_data.erl", 1).

-module(formation_data).

-export([get_constant/1, get_all_formation/0,
	 get_formation/1]).

-file("inc/formation.hrl", 1).

-record(m_formation,
	{ver = 1, list = [], use_lineup = 1, all_lineups = [],
	 sys_formations = []}).

-record(formation_sys,
	{id = 1, type = 1, pos_info = [], hallows_id = 0}).

-record(formation_lineup,
	{id = 1, name = <<>>, power = 0, pos_info = [],
	 max_power = 0, type = 1, hallows_id = 0}).

-record(formation_pos, {pos, id = 0}).

-record(formation_base_p,
	{id, lev, exp, pos_info, formation_list, power,
	 hallows_id = 0, all_lineups}).

-record(formation_fight_info, {pos, fight_pos, id = 0}).

-record(pk_formation_info,
	{id, name, formation, ffor_target, power,
	 is_ready = false, guild_name = <<>>, lev = 0, face_id,
	 pid = none}).

-record(formation_info_p,
	{id = 0, name = <<>>, power = 0, pos_info = []}).

-record(formation_data,
	{type, pos, need_lev, name, need_items = [],
	 restrain_s = [], restrain_w = []}).

-record(formation_attr_data,
	{type, lev, expend = [], attr_1 = [], attr_2 = [],
	 attr_3 = [], attr_4 = [], attr_5 = [], attr_6 = [],
	 attr_7 = [], attr_8 = [], attr_9 = [], power}).

-file("data/formation_data.erl", 12).

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

-file("data/formation_data.erl", 13).

-file("inc/attr.hrl", 1).

-record(attr,
	{fc = 0, toughness = 0, atk = 0, def = 0, def_s = 0,
	 def_p = 0, hp_max = 0, hp = 0, speed = 0, hit_rate = 0,
	 dodge_rate = 0, crit_rate = 0, crit_ratio = 0,
	 hit_magic = 0, dodge_magic = 0, dam = 0, res = 0,
	 cure = 0, be_cure = 0, dam_p = 0, res_p = 0, dam_s = 0,
	 res_s = 0, tenacity = 0}).

-record(attr_calc,
	{attr = #attr{}  :: #attr{},
	 attr_no_ratio = #attr{}  :: #attr{},
	 ratio = #attr{}  :: #attr{},
	 attr_no_fc = #attr{}  :: #attr{},
	 ratio_no_fc = #attr{}  :: #attr{}}).

-file("data/formation_data.erl", 14).

get_constant(lineup) -> 3;
get_constant(lineup_max) -> 5;
get_constant(lineup_unit) -> 5;
get_constant(exp_a) -> 200;
get_constant(exp_b) -> 100;
get_constant(item_zf) -> 10130;
get_constant(restrain_effect) -> [{dam, 0}, {res, 0}];
get_constant(restrain_des) -> 0;
get_constant(_) -> undefined.

get_all_formation() -> [1, 2, 3, 4, 5, 6, 7, 8].

get_formation(1) ->
    #formation_data{type = 1,
		    name = lang:get(<<"语言_for_03_1"/utf8>>),
		    pos = [{1, 2}, {2, 4}, {3, 6}, {4, 7}, {5, 8}, {6, 9}],
		    need_lev = 1};
get_formation(2) ->
    #formation_data{type = 2,
		    name = lang:get(<<"语言_for_03_2"/utf8>>),
		    pos = [{1, 1}, {2, 3}, {3, 4}, {4, 5}, {5, 6}, {6, 8}],
		    need_lev = 1};
get_formation(3) ->
    #formation_data{type = 3,
		    name = lang:get(<<"语言_for_03_3"/utf8>>),
		    pos = [{1, 1}, {2, 3}, {3, 5}, {4, 7}, {5, 8}, {6, 9}],
		    need_lev = 1};
get_formation(4) ->
    #formation_data{type = 4,
		    name = lang:get(<<"语言_for_03_4"/utf8>>),
		    pos = [{1, 1}, {2, 2}, {3, 3}, {4, 4}, {5, 6}, {6, 8}],
		    need_lev = 1};
get_formation(5) ->
    #formation_data{type = 5,
		    name = lang:get(<<"语言_for_03_5"/utf8>>),
		    pos = [{1, 1}, {2, 2}, {3, 3}, {4, 5}, {5, 7}, {6, 9}],
		    need_lev = 1};
get_formation(6) ->
    #formation_data{type = 6,
		    name = lang:get(<<"语言_for_03_6"/utf8>>),
		    pos = [{1, 2}, {2, 4}, {3, 5}, {4, 6}, {5, 7}, {6, 9}],
		    need_lev = 1};
get_formation(7) ->
    #formation_data{type = 7,
		    name = lang:get(<<"语言_for_03_7"/utf8>>),
		    pos = [{1, 1}, {2, 2}, {3, 3}, {4, 7}, {5, 8}, {6, 9}],
		    need_lev = 1};
get_formation(8) ->
    #formation_data{type = 8,
		    name = lang:get(<<"语言_for_03_8"/utf8>>),
		    pos = [{1, 1}, {2, 3}, {3, 4}, {4, 6}, {5, 7}, {6, 9}],
		    need_lev = 1};
get_formation(_Info) ->
    logger:data_error("get_formation_data_not_exist===>~w",
		      [_Info], formation_data, 83),
    undefined.


