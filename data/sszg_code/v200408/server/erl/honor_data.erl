-file("data/honor_data.erl", 1).

-file("data/honor_data.erl", 1).

-file("data/honor_data.erl", 1).

-file("data/honor_data.erl", 1).

-file("data/honor_data.erl", 1).

-file("data/honor_data.erl", 1).

-module(honor_data).

-export([get/1, const/1]).

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

-file("data/honor_data.erl", 11).

-file("inc/honor.hrl", 1).

-record(m_honor, {ver = 1, used = 0, list = []}).

-record(honor, {ver = 1, base_id = 0, expire_time = 0}).

-record(honor_data,
	{base_id = 0, name = <<>>, group = 0, loss = [],
	 is_panel = 0, expire_type = 0, expire_time = 0,
	 overlap = 0, attr = [], add_exp = 0, dynamic = 0}).

-record(honor_info,
	{key  :: atom(), list = []  :: list(),
	 end_time = 0  :: non_neg_integer()}).

-file("data/honor_data.erl", 12).

get(90003) ->
    #honor_data{base_id = 90003,
		name = lang:get(<<""/utf8>>), group = 1001,
		loss = [{50012, 1}], overlap = 1, expire_type = 1,
		expire_time = 5760, is_panel = 1,
		attr = [{hp_max_per, 1200}, {atk_per, 250}]};
get(90004) ->
    #honor_data{base_id = 90004,
		name = lang:get(<<""/utf8>>), group = 1002,
		loss = [{50013, 1}], overlap = 1, expire_type = 1,
		expire_time = 5760, is_panel = 1,
		attr = [{hp_max_per, 800}, {atk_per, 150}]};
get(90005) ->
    #honor_data{base_id = 90005,
		name = lang:get(<<""/utf8>>), group = 1003,
		loss = [{50014, 1}], overlap = 1, expire_type = 1,
		expire_time = 5760, is_panel = 1,
		attr = [{hp_max_per, 500}, {atk_per, 100}]};
get(90006) ->
    #honor_data{base_id = 90006,
		name = lang:get(<<""/utf8>>), group = 1004,
		loss = [{50101, 1}], overlap = 1, expire_type = 0,
		is_panel = 1,
		attr = [{hp_max_per, 300}, {atk_per, 60}, {def, 45}]};
get(90007) ->
    #honor_data{base_id = 90007,
		name = lang:get(<<""/utf8>>), group = 1005,
		loss = [{50102, 1}], overlap = 1, expire_type = 0,
		is_panel = 1,
		attr = [{hp_max_per, 300}, {atk_per, 60}, {def, 45}]};
get(90008) ->
    #honor_data{base_id = 90008,
		name = lang:get(<<""/utf8>>), group = 1006,
		loss = [{50103, 1}], overlap = 1, expire_type = 0,
		is_panel = 1,
		attr = [{hp_max_per, 300}, {atk_per, 60}, {def, 45}]};
get(90009) ->
    #honor_data{base_id = 90009,
		name = lang:get(<<""/utf8>>), group = 1007,
		loss = [{50104, 1}], overlap = 1, expire_type = 0,
		is_panel = 1,
		attr = [{hp_max_per, 300}, {atk_per, 60}, {def, 45}]};
get(90010) ->
    #honor_data{base_id = 90010,
		name = lang:get(<<""/utf8>>), group = 1008,
		loss = [{50105, 1}], overlap = 1, expire_type = 0,
		is_panel = 1,
		attr = [{hp_max_per, 300}, {atk_per, 60}, {def, 45}]};
get(90011) ->
    #honor_data{base_id = 90011,
		name = lang:get(<<""/utf8>>), group = 1009,
		loss = [{50106, 1}], overlap = 1, expire_type = 0,
		is_panel = 1,
		attr = [{hp_max_per, 300}, {atk_per, 60}, {def, 45}]};
get(90012) ->
    #honor_data{base_id = 90012,
		name = lang:get(<<""/utf8>>), group = 1010,
		loss = [{50107, 1}], overlap = 1, expire_type = 0,
		is_panel = 1,
		attr = [{hp_max_per, 300}, {atk_per, 60}, {def, 45}]};
get(90013) ->
    #honor_data{base_id = 90013,
		name = lang:get(<<""/utf8>>), group = 1033,
		loss = [{50108, 1}], overlap = 1, expire_type = 0,
		is_panel = 0,
		attr = [{hp_max_per, 300}, {atk_per, 60}, {def, 45}]};
get(90100) ->
    #honor_data{base_id = 90100,
		name = lang:get(<<""/utf8>>), group = 1011,
		loss = [{50200, 1}], overlap = 1, expire_type = 0,
		is_panel = 0,
		attr = [{hp_max_per, 100}, {atk_per, 20}]};
get(90101) ->
    #honor_data{base_id = 90101,
		name = lang:get(<<""/utf8>>), group = 1012,
		loss = [{50200, 1}], overlap = 1, expire_type = 0,
		is_panel = 0,
		attr = [{hp_max_per, 100}, {atk_per, 20}, {def, 15}]};
get(90102) ->
    #honor_data{base_id = 90102,
		name = lang:get(<<""/utf8>>), group = 1013,
		loss = [{50200, 1}], overlap = 1, expire_type = 0,
		is_panel = 0,
		attr = [{hp_max_per, 100}, {atk_per, 20}, {def, 15}]};
get(90103) ->
    #honor_data{base_id = 90103,
		name = lang:get(<<""/utf8>>), group = 1014,
		loss = [{50200, 1}], overlap = 1, expire_type = 0,
		is_panel = 0,
		attr = [{hp_max_per, 200}, {atk_per, 40}, {def, 30}]};
get(90104) ->
    #honor_data{base_id = 90104,
		name = lang:get(<<""/utf8>>), group = 1015,
		loss = [{50200, 1}], overlap = 1, expire_type = 0,
		is_panel = 0,
		attr = [{hp_max_per, 300}, {atk_per, 60}, {def, 45}]};
get(90105) ->
    #honor_data{base_id = 90105,
		name = lang:get(<<""/utf8>>), group = 1016,
		loss = [{50200, 1}], overlap = 1, expire_type = 0,
		is_panel = 0,
		attr = [{hp_max_per, 300}, {atk_per, 60}, {def, 45}]};
get(90106) ->
    #honor_data{base_id = 90106,
		name = lang:get(<<""/utf8>>), group = 1017,
		loss = [{50301, 1}], overlap = 1, expire_type = 0,
		is_panel = 1,
		attr = [{hp_max_per, 300}, {atk_per, 60}, {def, 45}]};
get(90401) ->
    #honor_data{base_id = 90401,
		name = lang:get(<<""/utf8>>), group = 1018,
		loss = [{50401, 1}], overlap = 1, expire_type = 1,
		expire_time = 1440, is_panel = 1,
		attr = [{hp_max_per, 300}, {atk_per, 60}, {def, 45}]};
get(90402) ->
    #honor_data{base_id = 90402,
		name = lang:get(<<""/utf8>>), group = 1019,
		loss = [{50402, 1}], overlap = 1, expire_type = 1,
		expire_time = 1440, is_panel = 1,
		attr = [{hp_max_per, 200}, {atk_per, 40}, {def, 30}]};
get(90403) ->
    #honor_data{base_id = 90403,
		name = lang:get(<<""/utf8>>), group = 1020,
		loss = [{50403, 1}], overlap = 1, expire_type = 1,
		expire_time = 1440, is_panel = 1,
		attr = [{hp_max_per, 100}, {atk_per, 20}, {def, 15}]};
get(90501) ->
    #honor_data{base_id = 90501,
		name = lang:get(<<""/utf8>>), group = 1021,
		loss = [{50501, 1}], overlap = 1, expire_type = 0,
		is_panel = 1,
		attr = [{hp_max_per, 200}, {atk_per, 40}, {def, 30}]};
get(90502) ->
    #honor_data{base_id = 90502,
		name = lang:get(<<""/utf8>>), group = 1022,
		loss = [{50502, 1}], overlap = 1, expire_type = 0,
		is_panel = 1,
		attr = [{hp_max_per, 200}, {atk_per, 40}, {def, 30}]};
get(90601) ->
    #honor_data{base_id = 90601,
		name = lang:get(<<""/utf8>>), group = 1023,
		loss = [{50601, 1}], overlap = 1, expire_type = 1,
		expire_time = 1440, is_panel = 1,
		attr = [{hp_max_per, 100}, {atk_per, 20}, {def, 15}]};
get(90602) ->
    #honor_data{base_id = 90602,
		name = lang:get(<<""/utf8>>), group = 1024,
		loss = [{50602, 1}], overlap = 1, expire_type = 1,
		expire_time = 1440, is_panel = 1,
		attr = [{hp_max_per, 200}, {atk_per, 40}, {def, 30}]};
get(90603) ->
    #honor_data{base_id = 90603,
		name = lang:get(<<""/utf8>>), group = 1025,
		loss = [{50603, 1}], overlap = 1, expire_type = 1,
		expire_time = 1440, is_panel = 1,
		attr = [{hp_max_per, 300}, {atk_per, 60}, {def, 45}]};
get(90701) ->
    #honor_data{base_id = 90701,
		name = lang:get(<<""/utf8>>), group = 1026,
		loss = [{50111, 1}], overlap = 1, expire_type = 0,
		is_panel = 1,
		attr = [{hp_max_per, 300}, {atk_per, 60}, {def, 45}]};
get(90702) ->
    #honor_data{base_id = 90702,
		name = lang:get(<<""/utf8>>), group = 1027,
		loss = [{50112, 1}], overlap = 1, expire_type = 0,
		is_panel = 1,
		attr = [{hp_max_per, 300}, {atk_per, 60}, {def, 45}]};
get(90703) ->
    #honor_data{base_id = 90703,
		name = lang:get(<<""/utf8>>), group = 1028,
		loss = [{50113, 1}], overlap = 1, expire_type = 0,
		is_panel = 1,
		attr = [{hp_max_per, 300}, {atk_per, 60}, {def, 45}]};
get(90704) ->
    #honor_data{base_id = 90704,
		name = lang:get(<<""/utf8>>), group = 1029,
		loss = [{50114, 1}], overlap = 1, expire_type = 0,
		is_panel = 1,
		attr = [{hp_max_per, 300}, {atk_per, 60}, {def, 45}]};
get(90705) ->
    #honor_data{base_id = 90705,
		name = lang:get(<<""/utf8>>), group = 1030,
		loss = [{50115, 1}], overlap = 1, expire_type = 0,
		is_panel = 1,
		attr = [{hp_max_per, 300}, {atk_per, 60}, {def, 45}]};
get(90706) ->
    #honor_data{base_id = 90706,
		name = lang:get(<<""/utf8>>), group = 1031,
		loss = [{50116, 1}], overlap = 1, expire_type = 0,
		is_panel = 1,
		attr = [{hp_max_per, 300}, {atk_per, 60}, {def, 45}]};
get(90707) ->
    #honor_data{base_id = 90707,
		name = lang:get(<<""/utf8>>), group = 1032,
		loss = [{50117, 1}], overlap = 1, expire_type = 0,
		is_panel = 1,
		attr = [{hp_max_per, 300}, {atk_per, 60}, {def, 45}]};
get(90801) ->
    #honor_data{base_id = 90801,
		name = lang:get(<<""/utf8>>), group = 1050,
		loss = [{50701, 1}], overlap = 1, expire_type = 0,
		is_panel = 1, attr = [{hp_max_per, 30}, {atk_per, 30}]};
get(90802) ->
    #honor_data{base_id = 90802,
		name = lang:get(<<""/utf8>>), group = 1051,
		loss = [{50702, 1}], overlap = 1, expire_type = 0,
		is_panel = 1, attr = [{hp_max_per, 20}, {atk_per, 20}]};
get(90803) ->
    #honor_data{base_id = 90803,
		name = lang:get(<<""/utf8>>), group = 1052,
		loss = [{50703, 1}], overlap = 1, expire_type = 0,
		is_panel = 1, attr = [{hp_max_per, 10}, {atk_per, 10}]};
get(90901) ->
    #honor_data{base_id = 90901,
		name = lang:get(<<""/utf8>>), group = 1053,
		loss = [{50302, 1}], overlap = 1, expire_type = 0,
		is_panel = 1,
		attr = [{hp_max_per, 300}, {atk_per, 60}, {def, 45}]};
get(90902) ->
    #honor_data{base_id = 90902,
		name = lang:get(<<""/utf8>>), group = 1054,
		loss = [{50303, 1}], overlap = 1, expire_type = 0,
		is_panel = 1,
		attr = [{hp_max_per, 300}, {atk_per, 60}, {def, 45}]};
get(90903) ->
    #honor_data{base_id = 90903,
		name = lang:get(<<""/utf8>>), group = 1055,
		loss = [{50304, 1}], overlap = 1, expire_type = 0,
		is_panel = 1,
		attr = [{hp_max_per, 300}, {atk_per, 60}, {def, 45}]};
get(91001) ->
    #honor_data{base_id = 91001,
		name = lang:get(<<""/utf8>>), group = 1056,
		loss = [{50801, 1}], overlap = 1, expire_type = 1,
		expire_time = 10080, is_panel = 1,
		attr = [{hp_max_per, 1200}, {atk_per, 250}]};
get(91002) ->
    #honor_data{base_id = 91002,
		name = lang:get(<<""/utf8>>), group = 1057,
		loss = [{50802, 1}], overlap = 1, expire_type = 1,
		expire_time = 10080, is_panel = 1,
		attr = [{hp_max_per, 800}, {atk_per, 150}]};
get(91003) ->
    #honor_data{base_id = 91003,
		name = lang:get(<<""/utf8>>), group = 1058,
		loss = [{50803, 1}], overlap = 1, expire_type = 1,
		expire_time = 10080, is_panel = 1,
		attr = [{hp_max_per, 500}, {atk_per, 100}]};
get(92001) ->
    #honor_data{base_id = 92001,
		name = lang:get(<<""/utf8>>), group = 1060,
		loss = [{50305, 1}], overlap = 1, expire_type = 0,
		is_panel = 1,
		attr = [{hp_max_per, 300}, {atk_per, 60}, {def, 45}]};
get(99003) ->
    #honor_data{base_id = 99003,
		name = lang:get(<<""/utf8>>), group = 1061,
		loss = [{50901, 1}], overlap = 1, expire_type = 0,
		is_panel = 1, attr = [{hp_max_per, 10}, {atk_per, 10}]};
get(99004) ->
    #honor_data{base_id = 99004,
		name = lang:get(<<""/utf8>>), group = 1062,
		loss = [{50902, 1}], overlap = 1, expire_type = 0,
		is_panel = 1, attr = [{hp_max_per, 10}, {atk_per, 10}]};
get(99005) ->
    #honor_data{base_id = 99005,
		name = lang:get(<<""/utf8>>), group = 1063,
		loss = [{50903, 1}], overlap = 1, expire_type = 0,
		is_panel = 1, attr = [{hp_max_per, 10}, {atk_per, 10}]};
get(99006) ->
    #honor_data{base_id = 99006,
		name = lang:get(<<""/utf8>>), group = 1064,
		loss = [{50904, 1}], overlap = 1, expire_type = 1,
		expire_time = 43200, is_panel = 1,
		attr = [{hp_max_per, 20}, {atk_per, 20}]};
get(99007) ->
    #honor_data{base_id = 99007,
		name = lang:get(<<""/utf8>>), group = 1065,
		loss = [{50905, 1}], overlap = 1, expire_type = 0,
		is_panel = 1, attr = [{hp_max_per, 10}, {atk_per, 10}]};
get(99008) ->
    #honor_data{base_id = 99008,
		name = lang:get(<<""/utf8>>), group = 1066,
		loss = [{50906, 1}], overlap = 1, expire_type = 0,
		is_panel = 1, attr = [{hp_max_per, 10}, {atk_per, 10}]};
get(99009) ->
    #honor_data{base_id = 99009,
		name = lang:get(<<""/utf8>>), group = 1067,
		loss = [{50907, 1}], overlap = 1, expire_type = 1,
		expire_time = 43200, is_panel = 1,
		attr = [{hp_max_per, 20}, {atk_per, 20}]};
get(99010) ->
    #honor_data{base_id = 99010,
		name = lang:get(<<""/utf8>>), group = 1068,
		loss = [{50908, 1}], overlap = 1, expire_type = 0,
		is_panel = 1, attr = [{hp_max_per, 10}, {atk_per, 10}]};
get(99011) ->
    #honor_data{base_id = 99011,
		name = lang:get(<<""/utf8>>), group = 1069,
		loss = [{50909, 1}], overlap = 1, expire_type = 1,
		expire_time = 43200, is_panel = 1,
		attr = [{hp_max_per, 20}, {atk_per, 20}]};
get(99012) ->
    #honor_data{base_id = 99012,
		name = lang:get(<<""/utf8>>), group = 1070,
		loss = [{50910, 1}], overlap = 1, expire_type = 1,
		expire_time = 43200, is_panel = 1,
		attr = [{hp_max_per, 20}, {atk_per, 20}]};
get(99013) ->
    #honor_data{base_id = 99013,
		name = lang:get(<<""/utf8>>), group = 1171,
		loss = [{50911, 1}], overlap = 1, expire_type = 1,
		expire_time = 43200, is_panel = 1,
		attr = [{hp_max_per, 20}, {atk_per, 20}]};
get(99014) ->
    #honor_data{base_id = 99014,
		name = lang:get(<<""/utf8>>), group = 1172,
		loss = [{50912, 1}], overlap = 1, expire_type = 1,
		expire_time = 43200, is_panel = 1,
		attr = [{hp_max_per, 20}, {atk_per, 20}]};
get(99015) ->
    #honor_data{base_id = 99015,
		name = lang:get(<<""/utf8>>), group = 1173,
		loss = [{50913, 1}], overlap = 1, expire_type = 1,
		expire_time = 43200, is_panel = 1,
		attr = [{hp_max_per, 10}, {atk_per, 10}]};
get(99016) ->
    #honor_data{base_id = 99016,
		name = lang:get(<<""/utf8>>), group = 1174,
		loss = [{50914, 1}], overlap = 1, expire_type = 1,
		expire_time = 43200, is_panel = 1,
		attr = [{hp_max_per, 20}, {atk_per, 20}]};
get(99017) ->
    #honor_data{base_id = 99017,
		name = lang:get(<<""/utf8>>), group = 1175,
		loss = [{50915, 1}], overlap = 1, expire_type = 1,
		expire_time = 43200, is_panel = 1,
		attr = [{hp_max_per, 20}, {atk_per, 20}]};
get(99018) ->
    #honor_data{base_id = 99018,
		name = lang:get(<<""/utf8>>), group = 1176,
		loss = [{50916, 1}], overlap = 1, expire_type = 1,
		expire_time = 43200, is_panel = 1,
		attr = [{hp_max_per, 20}, {atk_per, 20}]};
get(99019) ->
    #honor_data{base_id = 99019,
		name = lang:get(<<""/utf8>>), group = 1177,
		loss = [{50917, 1}], overlap = 1, expire_type = 1,
		expire_time = 43200, is_panel = 1,
		attr = [{hp_max_per, 20}, {atk_per, 20}]};
get(99020) ->
    #honor_data{base_id = 99020,
		name = lang:get(<<""/utf8>>), group = 1178,
		loss = [{50918, 1}], overlap = 1, expire_type = 1,
		expire_time = 43200, is_panel = 1,
		attr = [{hp_max_per, 20}, {atk_per, 20}]};
get(99021) ->
    #honor_data{base_id = 99021,
		name = lang:get(<<""/utf8>>), group = 1179,
		loss = [{50919, 1}], overlap = 1, expire_type = 1,
		expire_time = 43200, is_panel = 1,
		attr = [{hp_max_per, 10}, {atk_per, 10}]};
get(99022) ->
    #honor_data{base_id = 99022,
		name = lang:get(<<""/utf8>>), group = 1180,
		loss = [{50920, 1}], overlap = 1, expire_type = 1,
		expire_time = 43200, is_panel = 1,
		attr = [{hp_max_per, 20}, {atk_per, 20}]};
get(91101) ->
    #honor_data{base_id = 91101,
		name = lang:get(<<""/utf8>>), group = 1071,
		loss = [{51001, 1}], overlap = 1, expire_type = 0,
		is_panel = 1, attr = [{hp_max_per, 30}, {atk_per, 30}]};
get(91102) ->
    #honor_data{base_id = 91102,
		name = lang:get(<<""/utf8>>), group = 1072,
		loss = [{51002, 1}], overlap = 1, expire_type = 0,
		is_panel = 1, attr = [{hp_max_per, 20}, {atk_per, 20}]};
get(91103) ->
    #honor_data{base_id = 91103,
		name = lang:get(<<""/utf8>>), group = 1073,
		loss = [{51003, 1}], overlap = 1, expire_type = 0,
		is_panel = 1, attr = [{hp_max_per, 10}, {atk_per, 10}]};
get(91201) ->
    #honor_data{base_id = 91201,
		name = lang:get(<<""/utf8>>), group = 1081,
		loss = [{51101, 1}], overlap = 1, expire_type = 1,
		expire_time = 10080, is_panel = 1,
		attr = [{hp_max_per, 1200}, {atk_per, 250}]};
get(91202) ->
    #honor_data{base_id = 91202,
		name = lang:get(<<""/utf8>>), group = 1082,
		loss = [{51102, 1}], overlap = 1, expire_type = 1,
		expire_time = 10080, is_panel = 1,
		attr = [{hp_max_per, 800}, {atk_per, 150}]};
get(91203) ->
    #honor_data{base_id = 91203,
		name = lang:get(<<""/utf8>>), group = 1083,
		loss = [{51103, 1}], overlap = 1, expire_type = 1,
		expire_time = 10080, is_panel = 1,
		attr = [{hp_max_per, 500}, {atk_per, 100}]};
get(91301) ->
    #honor_data{base_id = 91301,
		name = lang:get(<<""/utf8>>), group = 1091,
		loss = [{51201, 1}], overlap = 1, expire_type = 1,
		expire_time = 10080, is_panel = 1,
		attr = [{hp_max_per, 1200}, {atk_per, 250}]};
get(91302) ->
    #honor_data{base_id = 91302,
		name = lang:get(<<""/utf8>>), group = 1092,
		loss = [{51202, 1}], overlap = 1, expire_type = 1,
		expire_time = 10080, is_panel = 1,
		attr = [{hp_max_per, 800}, {atk_per, 150}]};
get(99040) ->
    #honor_data{base_id = 99040,
		name = lang:get(<<""/utf8>>), group = 1195,
		loss = [{51300, 1}], overlap = 1, expire_type = 0,
		is_panel = 1,
		attr =
		    [{hit_rate, 250}, {hp_max_per, 150}, {atk_per, 150},
		     {crit_rate, 150}, {dodge_magic, 150}]};
get(99951) ->
    #honor_data{base_id = 99951,
		name = lang:get(<<""/utf8>>), group = 1077,
		loss = [{51301, 1}], overlap = 1, expire_type = 0,
		is_panel = 1,
		attr =
		    [{atk_per, 150}, {hp_max_per, 150}, {dam_s, 150},
		     {dodge_magic, 150}, {hit_rate, 250}]};
get(99952) ->
    #honor_data{base_id = 99952,
		name = lang:get(<<""/utf8>>), group = 1078,
		loss = [{51302, 1}], overlap = 1, expire_type = 0,
		is_panel = 1,
		attr =
		    [{hit_rate, 250}, {hp_max_per, 150}, {atk_per, 150},
		     {crit_rate, 150}, {dodge_magic, 150}]};
get(99953) ->
    #honor_data{base_id = 99953,
		name = lang:get(<<""/utf8>>), group = 1094,
		loss = [{51303, 1}], overlap = 1, expire_type = 0,
		is_panel = 1,
		attr =
		    [{hit_rate, 50}, {hp_max_per, 30}, {atk_per, 30},
		     {crit_rate, 30}, {dodge_magic, 30}, {dam_p, 30},
		     {dam_s, 30}, {res_s, 30}, {res_p, 30},
		     {crit_ratio, 30}]};
get(99954) ->
    #honor_data{base_id = 99954,
		name = lang:get(<<""/utf8>>), group = 1095,
		loss = [{51304, 1}], overlap = 1, expire_type = 0,
		is_panel = 1,
		attr =
		    [{hit_rate, 100}, {hp_max_per, 50}, {atk_per, 50},
		     {crit_rate, 50}, {dodge_magic, 50}, {dam_p, 50},
		     {dam_s, 50}, {res_s, 50}, {res_p, 50},
		     {crit_ratio, 50}]};
get(99955) ->
    #honor_data{base_id = 99955,
		name = lang:get(<<""/utf8>>), group = 1096,
		loss = [{51305, 1}], overlap = 1, expire_type = 0,
		is_panel = 1,
		attr =
		    [{hit_rate, 100}, {hp_max_per, 50}, {atk_per, 50},
		     {crit_rate, 50}, {dodge_magic, 50}, {dam_p, 50},
		     {dam_s, 50}, {res_s, 50}, {res_p, 50},
		     {crit_ratio, 50}]};
get(99956) ->
    #honor_data{base_id = 99956,
		name = lang:get(<<""/utf8>>), group = 1097,
		loss = [{51306, 1}], overlap = 1, expire_type = 0,
		is_panel = 1,
		attr =
		    [{hit_rate, 100}, {hp_max_per, 50}, {atk_per, 50},
		     {crit_rate, 50}, {dodge_magic, 50}, {dam_p, 50},
		     {dam_s, 50}, {res_s, 50}, {res_p, 50},
		     {crit_ratio, 50}]};
get(99957) ->
    #honor_data{base_id = 99957,
		name = lang:get(<<""/utf8>>), group = 1098,
		loss = [{51307, 1}], overlap = 1, expire_type = 0,
		is_panel = 1,
		attr =
		    [{hit_rate, 300}, {hp_max_per, 300}, {atk_per, 300},
		     {crit_rate, 300}, {dodge_magic, 300}, {dam_p, 300},
		     {dam_s, 300}, {res_s, 300}, {res_p, 300},
		     {crit_ratio, 300}]};
get(99958) ->
    #honor_data{base_id = 99958,
		name = lang:get(<<""/utf8>>), group = 1099,
		loss = [{51308, 1}], overlap = 1, expire_type = 0,
		is_panel = 1,
		attr =
		    [{hit_rate, 100}, {hp_max_per, 50}, {atk_per, 50},
		     {crit_rate, 50}, {dodge_magic, 50}, {dam_p, 50},
		     {dam_s, 50}, {res_s, 50}, {res_p, 50},
		     {crit_ratio, 50}]};
get(99959) ->
    #honor_data{base_id = 99959,
		name = lang:get(<<""/utf8>>), group = 1100,
		loss = [{51309, 1}], overlap = 1, expire_type = 0,
		is_panel = 1,
		attr =
		    [{hit_rate, 100}, {hp_max_per, 50}, {atk_per, 50},
		     {crit_rate, 50}, {dodge_magic, 50}, {dam_p, 50},
		     {dam_s, 50}, {res_s, 50}, {res_p, 50},
		     {crit_ratio, 50}]};
get(99960) ->
    #honor_data{base_id = 99960,
		name = lang:get(<<""/utf8>>), group = 1101,
		loss = [{51310, 1}], overlap = 1, expire_type = 0,
		is_panel = 1,
		attr =
		    [{hit_rate, 100}, {hp_max_per, 50}, {atk_per, 50},
		     {crit_rate, 50}, {dodge_magic, 50}, {dam_p, 50},
		     {dam_s, 50}, {res_s, 50}, {res_p, 50},
		     {crit_ratio, 50}]};
get(99961) ->
    #honor_data{base_id = 99961,
		name = lang:get(<<""/utf8>>), group = 1102,
		loss = [{51311, 1}], overlap = 1, expire_type = 0,
		is_panel = 1,
		attr =
		    [{hit_rate, 100}, {hp_max_per, 50}, {atk_per, 50},
		     {crit_rate, 50}, {dodge_magic, 50}, {dam_p, 50},
		     {dam_s, 50}, {res_s, 50}, {res_p, 50},
		     {crit_ratio, 50}]};
get(99962) ->
    #honor_data{base_id = 99962,
		name = lang:get(<<""/utf8>>), group = 1103,
		loss = [{51312, 1}], overlap = 1, expire_type = 0,
		is_panel = 1,
		attr =
		    [{hit_rate, 100}, {hp_max_per, 50}, {atk_per, 50},
		     {crit_rate, 50}, {dodge_magic, 50}, {dam_p, 50},
		     {dam_s, 50}, {res_s, 50}, {res_p, 50},
		     {crit_ratio, 50}]};
get(99963) ->
    #honor_data{base_id = 99963,
		name = lang:get(<<""/utf8>>), group = 1104,
		loss = [{51313, 1}], overlap = 1, expire_type = 0,
		is_panel = 1,
		attr =
		    [{hit_rate, 100}, {hp_max_per, 50}, {atk_per, 50},
		     {crit_rate, 50}, {dodge_magic, 50}, {dam_p, 50},
		     {dam_s, 50}, {res_s, 50}, {res_p, 50},
		     {crit_ratio, 50}]};
get(91965) ->
    #honor_data{base_id = 91965,
		name = lang:get(<<""/utf8>>), group = 1249,
		loss = [{51846, 1}], overlap = 1, expire_type = 0,
		is_panel = 1,
		attr =
		    [{hit_rate, 100}, {hp_max_per, 10}, {atk_per, 10},
		     {crit_rate, 10}, {dodge_magic, 10}, {dam_p, 10},
		     {dam_s, 10}, {res_s, 10}, {res_p, 10},
		     {crit_ratio, 10}]};
get(91967) ->
    #honor_data{base_id = 91967,
		name = lang:get(<<""/utf8>>), group = 1251,
		loss = [{51848, 1}], overlap = 1, expire_type = 0,
		is_panel = 1,
		attr =
		    [{hit_rate, 100}, {hp_max_per, 20}, {atk_per, 20},
		     {crit_rate, 20}, {dodge_magic, 20}, {dam_p, 20},
		     {dam_s, 20}, {res_s, 20}, {res_p, 20},
		     {crit_ratio, 20}]};
get(91969) ->
    #honor_data{base_id = 91969,
		name = lang:get(<<""/utf8>>), group = 1253,
		loss = [{51850, 1}], overlap = 1, expire_type = 0,
		is_panel = 1,
		attr =
		    [{hit_rate, 100}, {hp_max_per, 30}, {atk_per, 30},
		     {crit_rate, 30}, {dodge_magic, 30}, {dam_p, 30},
		     {dam_s, 30}, {res_s, 30}, {res_p, 30},
		     {crit_ratio, 30}]};
get(40923) ->
    #honor_data{base_id = 40923,
		name = lang:get(<<""/utf8>>), group = 4092,
		loss = [{40923, 1}], overlap = 1, expire_type = 0,
		is_panel = 1,
		attr =
		    [{hit_rate, 10}, {hp_max_per, 10}, {atk_per, 10},
		     {crit_rate, 10}, {dodge_magic, 10}, {dam_p, 10},
		     {dam_s, 10}, {res_s, 10}, {res_p, 10},
		     {crit_ratio, 10}]};
get(50524) ->
    #honor_data{base_id = 50524,
		name = lang:get(<<""/utf8>>), group = 5524,
		loss = [{50524, 1}], overlap = 1, expire_type = 0,
		is_panel = 1,
		attr =
		    [{hit_rate, 30}, {hp_max_per, 30}, {atk_per, 30},
		     {crit_rate, 30}, {dodge_magic, 30}, {dam_p, 30},
		     {dam_s, 30}, {res_s, 30}, {res_p, 30},
		     {crit_ratio, 30}]};
get(91303) ->
    #honor_data{base_id = 91303,
		name = lang:get(<<""/utf8>>), group = 1093,
		loss = [{51203, 1}], overlap = 1, expire_type = 1,
		expire_time = 10080, is_panel = 1,
		attr = [{hp_max_per, 500}, {atk_per, 100}]};
get(91304) ->
    #honor_data{base_id = 91304,
		name = lang:get(<<""/utf8>>), group = 1105,
		loss = [{51204, 1}], overlap = 1, expire_type = 1,
		expire_time = 10080, is_panel = 1,
		attr =
		    [{hp_max_per, 500}, {atk_per, 300}, {res_s, 100},
		     {res_p, 100}]};
get(91305) ->
    #honor_data{base_id = 91305,
		name = lang:get(<<""/utf8>>), group = 1106,
		loss = [{51205, 1}], overlap = 1, expire_type = 1,
		expire_time = 10080, is_panel = 1,
		attr =
		    [{hp_max_per, 400}, {atk_per, 200}, {res_s, 80},
		     {res_p, 80}]};
get(91306) ->
    #honor_data{base_id = 91306,
		name = lang:get(<<""/utf8>>), group = 1107,
		loss = [{51206, 1}], overlap = 1, expire_type = 1,
		expire_time = 10080, is_panel = 1,
		attr =
		    [{hp_max_per, 300}, {atk_per, 100}, {res_s, 50},
		     {res_p, 50}]};
get(91307) ->
    #honor_data{base_id = 91307,
		name = lang:get(<<""/utf8>>), group = 1108,
		loss = [{51207, 1}], overlap = 1, expire_type = 1,
		expire_time = 10080, is_panel = 1,
		attr =
		    [{hp_max_per, 200}, {atk_per, 50}, {res_s, 30},
		     {res_p, 30}]};
get(91308) ->
    #honor_data{base_id = 91308,
		name = lang:get(<<""/utf8>>), group = 1109,
		loss = [{51208, 1}], overlap = 1, expire_type = 1,
		expire_time = 10080, is_panel = 1,
		attr =
		    [{hp_max_per, 100}, {atk_per, 30}, {res_s, 10},
		     {res_p, 10}]};
get(91309) ->
    #honor_data{base_id = 91309,
		name = lang:get(<<""/utf8>>), group = 1110,
		loss = [{51209, 1}], overlap = 1, expire_type = 1,
		expire_time = 10080, is_panel = 1,
		attr =
		    [{hp_max_per, 500}, {atk_per, 300}, {crit_rate, 300},
		     {dam_p, 100}, {dam_s, 100}]};
get(91310) ->
    #honor_data{base_id = 91310,
		name = lang:get(<<""/utf8>>), group = 1111,
		loss = [{51210, 1}], overlap = 1, expire_type = 1,
		expire_time = 10080, is_panel = 1,
		attr =
		    [{hp_max_per, 400}, {atk_per, 200}, {crit_rate, 200},
		     {dam_p, 80}, {dam_s, 80}]};
get(91311) ->
    #honor_data{base_id = 91311,
		name = lang:get(<<""/utf8>>), group = 1112,
		loss = [{51211, 1}], overlap = 1, expire_type = 1,
		expire_time = 10080, is_panel = 1,
		attr =
		    [{hp_max_per, 300}, {atk_per, 100}, {crit_rate, 100},
		     {dam_p, 50}, {dam_s, 50}]};
get(91312) ->
    #honor_data{base_id = 91312,
		name = lang:get(<<""/utf8>>), group = 1113,
		loss = [{51212, 1}], overlap = 1, expire_type = 1,
		expire_time = 10080, is_panel = 1,
		attr =
		    [{hp_max_per, 200}, {atk_per, 50}, {crit_rate, 50},
		     {dam_p, 30}, {dam_s, 30}]};
get(91313) ->
    #honor_data{base_id = 91313,
		name = lang:get(<<""/utf8>>), group = 1114,
		loss = [{51213, 1}], overlap = 1, expire_type = 1,
		expire_time = 10080, is_panel = 1,
		attr =
		    [{hp_max_per, 100}, {atk_per, 30}, {crit_rate, 30},
		     {dam_p, 10}, {dam_s, 10}]};
get(91314) ->
    #honor_data{base_id = 91314,
		name = lang:get(<<""/utf8>>), group = 1115,
		loss = [{51214, 1}], overlap = 1, expire_type = 0,
		is_panel = 1,
		attr =
		    [{hp_max_per, 200}, {atk_per, 200}, {crit_rate, 100},
		     {dam_p, 50}, {dam_s, 50}]};
get(91315) ->
    #honor_data{base_id = 91315,
		name = lang:get(<<""/utf8>>), group = 1116,
		loss = [{51215, 1}], overlap = 1, expire_type = 0,
		is_panel = 1,
		attr =
		    [{hp_max_per, 200}, {atk_per, 200}, {crit_rate, 100},
		     {dam_p, 50}, {dam_s, 50}]};
get(91316) ->
    #honor_data{base_id = 91316,
		name = lang:get(<<""/utf8>>), group = 1117,
		loss = [{51216, 1}], overlap = 1, expire_type = 0,
		is_panel = 1,
		attr =
		    [{hp_max_per, 150}, {atk_per, 150}, {crit_rate, 100},
		     {dam_p, 50}, {dam_s, 50}]};
get(91317) ->
    #honor_data{base_id = 91317,
		name = lang:get(<<""/utf8>>), group = 1118,
		loss = [{51217, 1}], overlap = 1, expire_type = 1,
		expire_time = 10080, is_panel = 1,
		attr =
		    [{hp_max_per, 200}, {atk_per, 200}, {crit_rate, 100},
		     {dam_p, 50}, {dam_s, 50}]};
get(91318) ->
    #honor_data{base_id = 91318,
		name = lang:get(<<""/utf8>>), group = 1119,
		loss = [{51218, 1}], overlap = 1, expire_type = 1,
		expire_time = 10080, is_panel = 1,
		attr =
		    [{hp_max_per, 150}, {atk_per, 150}, {crit_rate, 100},
		     {dam_p, 50}, {dam_s, 50}]};
get(91319) ->
    #honor_data{base_id = 91319,
		name = lang:get(<<""/utf8>>), group = 1120,
		loss = [{51219, 1}], overlap = 1, expire_type = 1,
		expire_time = 10080, is_panel = 1,
		attr =
		    [{hp_max_per, 100}, {atk_per, 100}, {crit_rate, 100},
		     {dam_p, 50}, {dam_s, 50}]};
get(91320) ->
    #honor_data{base_id = 91320,
		name = lang:get(<<""/utf8>>), group = 1121,
		loss = [{51220, 1}], overlap = 1, expire_type = 0,
		is_panel = 1,
		attr =
		    [{hp_max_per, 200}, {atk_per, 200}, {crit_rate, 100},
		     {dam_p, 50}, {dam_s, 50}]};
get(91321) ->
    #honor_data{base_id = 91321,
		name = lang:get(<<""/utf8>>), group = 1122,
		loss = [{51221, 1}], overlap = 1, expire_type = 0,
		is_panel = 1,
		attr =
		    [{hp_max_per, 200}, {atk_per, 200}, {crit_rate, 100},
		     {dam_p, 50}, {dam_s, 50}]};
get(91322) ->
    #honor_data{base_id = 91322,
		name = lang:get(<<""/utf8>>), group = 1123,
		loss = [{51222, 1}], overlap = 1, expire_type = 1,
		expire_time = 43200, is_panel = 1,
		attr =
		    [{hp_max_per, 150}, {atk_per, 150}, {crit_rate, 100},
		     {dam_p, 50}, {dam_s, 50}]};
get(91323) ->
    #honor_data{base_id = 91323,
		name = lang:get(<<""/utf8>>), group = 1124,
		loss = [{51223, 1}], overlap = 1, expire_type = 1,
		expire_time = 43200, is_panel = 1,
		attr =
		    [{hp_max_per, 150}, {atk_per, 150}, {crit_rate, 100},
		     {dam_p, 50}, {dam_s, 50}]};
get(91324) ->
    #honor_data{base_id = 91324,
		name = lang:get(<<""/utf8>>), group = 1125,
		loss = [{51224, 1}], overlap = 1, expire_type = 1,
		expire_time = 43200, is_panel = 1,
		attr =
		    [{hp_max_per, 150}, {atk_per, 150}, {crit_rate, 100},
		     {dam_p, 50}, {dam_s, 50}]};
get(91325) ->
    #honor_data{base_id = 91325,
		name = lang:get(<<""/utf8>>), group = 1126,
		loss = [{51225, 1}], overlap = 1, expire_type = 1,
		expire_time = 43200, is_panel = 1,
		attr =
		    [{hp_max_per, 150}, {atk_per, 150}, {crit_rate, 100},
		     {dam_p, 50}, {dam_s, 50}]};
get(91326) ->
    #honor_data{base_id = 91326,
		name = lang:get(<<""/utf8>>), group = 1127,
		loss = [{51226, 1}], overlap = 1, expire_type = 1,
		expire_time = 43200, is_panel = 1,
		attr =
		    [{hp_max_per, 150}, {atk_per, 150}, {crit_rate, 100},
		     {dam_p, 50}, {dam_s, 50}]};
get(91327) ->
    #honor_data{base_id = 91327,
		name = lang:get(<<""/utf8>>), group = 1128,
		loss = [{51227, 1}], overlap = 1, expire_type = 1,
		expire_time = 43200, is_panel = 1,
		attr =
		    [{hp_max_per, 150}, {atk_per, 150}, {crit_rate, 100},
		     {dam_p, 50}, {dam_s, 50}]};
get(91328) ->
    #honor_data{base_id = 91328,
		name = lang:get(<<""/utf8>>), group = 1129,
		loss = [{51228, 1}], overlap = 1, expire_type = 1,
		expire_time = 43200, is_panel = 1,
		attr =
		    [{hp_max_per, 150}, {atk_per, 150}, {crit_rate, 100},
		     {dam_p, 50}, {dam_s, 50}]};
get(91329) ->
    #honor_data{base_id = 91329,
		name = lang:get(<<""/utf8>>), group = 1130,
		loss = [{51229, 1}], overlap = 1, expire_type = 0,
		is_panel = 1,
		attr =
		    [{hp_max_per, 100}, {atk_per, 100}, {crit_rate, 100},
		     {dam_p, 50}, {dam_s, 50}]};
get(91330) ->
    #honor_data{base_id = 91330,
		name = lang:get(<<""/utf8>>), group = 1131,
		loss = [{51230, 1}], overlap = 1, expire_type = 0,
		is_panel = 1,
		attr =
		    [{hp_max_per, 100}, {atk_per, 100}, {crit_rate, 100},
		     {dam_p, 50}, {dam_s, 50}]};
get(91331) ->
    #honor_data{base_id = 91331,
		name = lang:get(<<""/utf8>>), group = 1132,
		loss = [{51231, 1}], overlap = 1, expire_type = 0,
		is_panel = 1,
		attr =
		    [{hp_max_per, 100}, {atk_per, 100}, {crit_rate, 100},
		     {dam_p, 50}, {dam_s, 50}]};
get(91332) ->
    #honor_data{base_id = 91332,
		name = lang:get(<<""/utf8>>), group = 1133,
		loss = [{51232, 1}], overlap = 1, expire_type = 0,
		is_panel = 1,
		attr =
		    [{hp_max_per, 100}, {atk_per, 100}, {crit_rate, 100},
		     {dam_p, 50}, {dam_s, 50}]};
get(91333) ->
    #honor_data{base_id = 91333,
		name = lang:get(<<""/utf8>>), group = 1134,
		loss = [{51233, 1}], overlap = 1, expire_type = 0,
		is_panel = 1,
		attr =
		    [{hp_max_per, 100}, {atk_per, 100}, {crit_rate, 100},
		     {dam_p, 50}, {dam_s, 50}]};
get(91334) ->
    #honor_data{base_id = 91334,
		name = lang:get(<<""/utf8>>), group = 1135,
		loss = [{51234, 1}], overlap = 1, expire_type = 0,
		is_panel = 1,
		attr =
		    [{hp_max_per, 100}, {atk_per, 100}, {crit_rate, 100},
		     {dam_p, 50}, {dam_s, 50}]};
get(91335) ->
    #honor_data{base_id = 91335,
		name = lang:get(<<""/utf8>>), group = 1136,
		loss = [{51235, 1}], overlap = 1, expire_type = 0,
		is_panel = 1,
		attr =
		    [{hp_max_per, 100}, {atk_per, 100}, {crit_rate, 100},
		     {dam_p, 50}, {dam_s, 50}]};
get(91336) ->
    #honor_data{base_id = 91336,
		name = lang:get(<<""/utf8>>), group = 1137,
		loss = [{51236, 1}], overlap = 1, expire_type = 0,
		is_panel = 1,
		attr =
		    [{hp_max_per, 100}, {atk_per, 100}, {crit_rate, 100},
		     {dam_p, 50}, {dam_s, 50}]};
get(91337) ->
    #honor_data{base_id = 91337,
		name = lang:get(<<""/utf8>>), group = 1138,
		loss = [{51237, 1}], overlap = 1, expire_type = 0,
		is_panel = 1,
		attr =
		    [{hp_max_per, 100}, {atk_per, 100}, {crit_rate, 100},
		     {dam_p, 50}, {dam_s, 50}]};
get(91338) ->
    #honor_data{base_id = 91338,
		name = lang:get(<<""/utf8>>), group = 1139,
		loss = [{51238, 1}], overlap = 1, expire_type = 0,
		is_panel = 1,
		attr =
		    [{hp_max_per, 100}, {atk_per, 100}, {crit_rate, 100},
		     {dam_p, 50}, {dam_s, 50}]};
get(_Info) ->
    logger:data_error("get_data_not_exist===>~w", [_Info],
		      honor_data, 128),
    undefined.

const(_Info) ->
    logger:data_error("const_data_not_exist===>~w", [_Info],
		      honor_data, 131),
    undefined.


