-file("data/avatar_data.erl", 1).

-module(avatar_data).

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

-file("data/avatar_data.erl", 9).

-file("inc/avatar.hrl", 1).

-record(m_avatar, {ver = 1, used = 0, frames = []}).

-record(avatar_frame,
	{ver = 1, base_id = 0, expire_time = 0}).

-record(avatar_frame_data,
	{base_id = 0, name = <<>>, group = 0, loss = [],
	 is_panel = 0, expire_type = 0, expire_time = 0,
	 overlap = 0, attr = []}).

-file("data/avatar_data.erl", 10).

get(1000) ->
    #avatar_frame_data{base_id = 1000,
		       name = lang:get(<<"冒险徽章"/utf8>>), group = 100,
		       expire_type = 0};
get(2000) ->
    #avatar_frame_data{base_id = 2000,
		       name = lang:get(<<""/utf8>>), group = 200,
		       loss = [{50001, 1}], overlap = 0, expire_type = 1,
		       expire_time = 10080, is_panel = 1};
get(2100) ->
    #avatar_frame_data{base_id = 2100,
		       name = lang:get(<<""/utf8>>), group = 210,
		       loss = [{50002, 1}], overlap = 0, expire_type = 1,
		       expire_time = 10080, is_panel = 1};
get(2200) ->
    #avatar_frame_data{base_id = 2200,
		       name = lang:get(<<""/utf8>>), group = 220,
		       loss = [{50003, 1}], overlap = 0, expire_type = 1,
		       expire_time = 10080, is_panel = 1};
get(2300) ->
    #avatar_frame_data{base_id = 2300,
		       name = lang:get(<<""/utf8>>), group = 230,
		       loss = [{60101, 1}], overlap = 0, expire_type = 0,
		       is_panel = 1};
get(2400) ->
    #avatar_frame_data{base_id = 2400,
		       name = lang:get(<<""/utf8>>), group = 240,
		       loss = [{60102, 1}], overlap = 0, expire_type = 0,
		       is_panel = 1};
get(2500) ->
    #avatar_frame_data{base_id = 2500,
		       name = lang:get(<<""/utf8>>), group = 250,
		       loss = [{50010, 1}], overlap = 0, expire_type = 2,
		       expire_time = 17280, is_panel = 1};
get(2600) ->
    #avatar_frame_data{base_id = 2600,
		       name = lang:get(<<""/utf8>>), group = 260,
		       loss = [{50005, 1}], overlap = 0, expire_type = 0,
		       is_panel = 1};
get(2700) ->
    #avatar_frame_data{base_id = 2700,
		       name = lang:get(<<""/utf8>>), group = 270,
		       loss = [{50004, 1}], overlap = 0, expire_type = 1,
		       expire_time = 10080, is_panel = 1};
get(2800) ->
    #avatar_frame_data{base_id = 2800,
		       name = lang:get(<<""/utf8>>), group = 280,
		       loss = [{50006, 1}], overlap = 0, expire_type = 0,
		       is_panel = 1};
get(2900) ->
    #avatar_frame_data{base_id = 2900,
		       name = lang:get(<<""/utf8>>), group = 290,
		       loss = [{50007, 1}], overlap = 0, expire_type = 0,
		       is_panel = 1};
get(3000) ->
    #avatar_frame_data{base_id = 3000,
		       name = lang:get(<<""/utf8>>), group = 300,
		       loss = [{50008, 1}], overlap = 0, expire_type = 0,
		       is_panel = 1};
get(3100) ->
    #avatar_frame_data{base_id = 3100,
		       name = lang:get(<<""/utf8>>), group = 310,
		       loss = [{50009, 1}], overlap = 0, expire_type = 0,
		       is_panel = 1};
get(3200) ->
    #avatar_frame_data{base_id = 3200,
		       name = lang:get(<<""/utf8>>), group = 320,
		       loss = [{50016, 1}], overlap = 0, expire_type = 0,
		       is_panel = 1};
get(3300) ->
    #avatar_frame_data{base_id = 3300,
		       name = lang:get(<<""/utf8>>), group = 330,
		       loss = [{50017, 1}], overlap = 0, expire_type = 0,
		       is_panel = 1};
get(3400) ->
    #avatar_frame_data{base_id = 3400,
		       name = lang:get(<<""/utf8>>), group = 340,
		       loss = [{50018, 1}], overlap = 0, expire_type = 0,
		       is_panel = 1};
get(3500) ->
    #avatar_frame_data{base_id = 3500,
		       name = lang:get(<<""/utf8>>), group = 350,
		       loss = [{50019, 1}], overlap = 0, expire_type = 1,
		       expire_time = 1440, is_panel = 1};
get(3600) ->
    #avatar_frame_data{base_id = 3600,
		       name = lang:get(<<""/utf8>>), group = 360,
		       loss = [{50020, 1}], overlap = 0, expire_type = 0,
		       is_panel = 1};
get(3700) ->
    #avatar_frame_data{base_id = 3700,
		       name = lang:get(<<""/utf8>>), group = 370,
		       loss = [{50021, 1}], overlap = 0, expire_type = 0,
		       is_panel = 1};
get(3800) ->
    #avatar_frame_data{base_id = 3800,
		       name = lang:get(<<""/utf8>>), group = 380,
		       loss = [{50022, 1}], overlap = 0, expire_type = 0,
		       is_panel = 1};
get(3900) ->
    #avatar_frame_data{base_id = 3900,
		       name = lang:get(<<""/utf8>>), group = 390,
		       loss = [{50023, 1}], overlap = 0, expire_type = 0,
		       is_panel = 1};
get(4000) ->
    #avatar_frame_data{base_id = 4000,
		       name = lang:get(<<""/utf8>>), group = 400,
		       loss = [{50024, 1}], overlap = 0, expire_type = 1,
		       expire_time = 20160, is_panel = 1};
get(4100) ->
    #avatar_frame_data{base_id = 4100,
		       name = lang:get(<<""/utf8>>), group = 410,
		       loss = [{50025, 1}], overlap = 0, expire_type = 1,
		       expire_time = 20160, is_panel = 1};
get(4200) ->
    #avatar_frame_data{base_id = 4200,
		       name = lang:get(<<""/utf8>>), group = 420,
		       loss = [{50026, 1}], overlap = 0, expire_type = 1,
		       expire_time = 20160, is_panel = 1};
get(4300) ->
    #avatar_frame_data{base_id = 4300,
		       name = lang:get(<<""/utf8>>), group = 430,
		       loss = [{50027, 1}], overlap = 0, expire_type = 1,
		       expire_time = 20160, is_panel = 1};
get(4400) ->
    #avatar_frame_data{base_id = 4400,
		       name = lang:get(<<""/utf8>>), group = 440,
		       loss = [{50028, 1}], overlap = 0, expire_type = 0,
		       is_panel = 1};
get(4500) ->
    #avatar_frame_data{base_id = 4500,
		       name = lang:get(<<""/utf8>>), group = 450,
		       loss = [{50029, 1}], overlap = 0, expire_type = 0,
		       is_panel = 1};
get(4600) ->
    #avatar_frame_data{base_id = 4600,
		       name = lang:get(<<""/utf8>>), group = 460,
		       loss = [{50030, 1}], overlap = 0, expire_type = 0,
		       is_panel = 1};
get(4700) ->
    #avatar_frame_data{base_id = 4700,
		       name = lang:get(<<""/utf8>>), group = 470,
		       loss = [{50031, 1}], overlap = 0, expire_type = 0,
		       is_panel = 1};
get(4800) ->
    #avatar_frame_data{base_id = 4800,
		       name = lang:get(<<""/utf8>>), group = 480,
		       loss = [{50032, 1}], overlap = 0, expire_type = 0,
		       is_panel = 1};
get(4900) ->
    #avatar_frame_data{base_id = 4900,
		       name = lang:get(<<""/utf8>>), group = 490,
		       loss = [{50033, 1}], overlap = 0, expire_type = 0,
		       is_panel = 1};
get(5000) ->
    #avatar_frame_data{base_id = 5000,
		       name = lang:get(<<""/utf8>>), group = 500,
		       loss = [{50034, 1}], overlap = 0, expire_type = 1,
		       expire_time = 43200, is_panel = 1};
get(5100) ->
    #avatar_frame_data{base_id = 5100,
		       name = lang:get(<<""/utf8>>), group = 510,
		       loss = [{50035, 1}], overlap = 0, expire_type = 1,
		       expire_time = 129600, is_panel = 1};
get(5200) ->
    #avatar_frame_data{base_id = 5200,
		       name = lang:get(<<""/utf8>>), group = 520,
		       loss = [{50036, 1}], overlap = 0, expire_type = 0,
		       is_panel = 1};
get(5300) ->
    #avatar_frame_data{base_id = 5300,
		       name = lang:get(<<""/utf8>>), group = 530,
		       loss = [{50037, 1}], overlap = 0, expire_type = 0,
		       is_panel = 1};
get(6000) ->
    #avatar_frame_data{base_id = 6000,
		       name = lang:get(<<""/utf8>>), group = 600,
		       loss = [{60131, 1}], overlap = 0, expire_type = 0,
		       is_panel = 1};
get(6100) ->
    #avatar_frame_data{base_id = 6100,
		       name = lang:get(<<""/utf8>>), group = 610,
		       loss = [{60132, 1}], overlap = 0, expire_type = 0,
		       is_panel = 1};
get(6200) ->
    #avatar_frame_data{base_id = 6200,
		       name = lang:get(<<""/utf8>>), group = 620,
		       loss = [{60133, 1}], overlap = 0, expire_type = 0,
		       is_panel = 1};
get(6300) ->
    #avatar_frame_data{base_id = 6300,
		       name = lang:get(<<""/utf8>>), group = 630,
		       loss = [{60134, 1}], overlap = 0, expire_type = 0,
		       is_panel = 1};
get(6400) ->
    #avatar_frame_data{base_id = 6400,
		       name = lang:get(<<""/utf8>>), group = 640,
		       loss = [{60135, 1}], overlap = 0, expire_type = 0,
		       is_panel = 1};
get(6500) ->
    #avatar_frame_data{base_id = 6500,
		       name = lang:get(<<""/utf8>>), group = 650,
		       loss = [{60136, 1}], overlap = 0, expire_type = 0,
		       is_panel = 1};
get(6600) ->
    #avatar_frame_data{base_id = 6600,
		       name = lang:get(<<""/utf8>>), group = 660,
		       loss = [{60137, 1}], overlap = 0, expire_type = 0,
		       is_panel = 1};
get(6700) ->
    #avatar_frame_data{base_id = 6700,
		       name = lang:get(<<""/utf8>>), group = 670,
		       loss = [{60138, 1}], overlap = 0, expire_type = 0,
		       is_panel = 1};
get(6800) ->
    #avatar_frame_data{base_id = 6800,
		       name = lang:get(<<""/utf8>>), group = 680,
		       loss = [{60139, 1}], overlap = 0, expire_type = 0,
		       is_panel = 1};
get(6900) ->
    #avatar_frame_data{base_id = 6900,
		       name = lang:get(<<""/utf8>>), group = 690,
		       loss = [{60140, 1}], overlap = 0, expire_type = 0,
		       is_panel = 1};
get(7000) ->
    #avatar_frame_data{base_id = 7000,
		       name = lang:get(<<""/utf8>>), group = 700,
		       loss = [{60141, 1}], overlap = 0, expire_type = 0,
		       is_panel = 1};
get(7100) ->
    #avatar_frame_data{base_id = 7100,
		       name = lang:get(<<""/utf8>>), group = 710,
		       loss = [{60142, 1}], overlap = 0, expire_type = 0,
		       is_panel = 1};
get(7200) ->
    #avatar_frame_data{base_id = 7200,
		       name = lang:get(<<""/utf8>>), group = 720,
		       loss = [{60143, 1}], overlap = 0, expire_type = 0,
		       is_panel = 1};
get(7300) ->
    #avatar_frame_data{base_id = 7300,
		       name = lang:get(<<""/utf8>>), group = 730,
		       loss = [{60144, 1}], overlap = 0, expire_type = 0,
		       is_panel = 1};
get(7400) ->
    #avatar_frame_data{base_id = 7400,
		       name = lang:get(<<""/utf8>>), group = 740,
		       loss = [{60145, 1}], overlap = 0, expire_type = 0,
		       is_panel = 1};
get(7500) ->
    #avatar_frame_data{base_id = 7500,
		       name = lang:get(<<""/utf8>>), group = 750,
		       loss = [{60146, 1}], overlap = 0, expire_type = 0,
		       is_panel = 1};
get(_Info) ->
    logger:data_error("get_data_not_exist===>~w", [_Info],
		      avatar_data, 64),
    undefined.

const(default_avatar) -> 1000;
const(_Info) ->
    logger:data_error("const_data_not_exist===>~w", [_Info],
		      avatar_data, 67),
    undefined.


