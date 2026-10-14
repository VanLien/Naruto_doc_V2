-file("data/holiday_exchange_data.erl", 1).

-module(holiday_exchange_data).

-export([get_buy_info/1, list/0, get_limit/1,
	 get_limit_info/1]).

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

-file("data/holiday_exchange_data.erl", 13).

get_buy_info(1) -> {[{59041, 3}], [{39414, 50}]};
get_buy_info(2) -> {[{39052, 5000}], [{113009, 1}]};
get_buy_info(3) -> {[{39052, 5000}], [{113010, 1}]};
get_buy_info(4) -> {[{39052, 5000}], [{113011, 1}]};
get_buy_info(5) -> {[{39052, 5000}], [{113012, 1}]};
get_buy_info(6) -> {[{39052, 10000}], [{114001, 1}]};
get_buy_info(7) -> {[{90900, 10}], [{90514, 10}]};
get_buy_info(8) -> {[{91000, 10}], [{90515, 10}]};
get_buy_info(9) -> {[{111001, 100}], [{10040, 400}]};
get_buy_info(10) -> {[{111002, 100}], [{10040, 400}]};
get_buy_info(11) -> {[{111003, 100}], [{10040, 400}]};
get_buy_info(12) -> {[{111004, 100}], [{10040, 400}]};
get_buy_info(13) -> {[{111005, 100}], [{10040, 400}]};
get_buy_info(14) ->
    {[{1250201, 1}, {1250202, 1}, {1250203, 1},
      {1250204, 1}],
     [{8888825, 1}]};
get_buy_info(15) -> {[{39052, 1000}], [{39053, 1000}]};
get_buy_info(16) -> {[{39053, 1000}], [{39052, 1000}]};
get_buy_info(17) -> {[{22, 100000000}], [{39053, 80}]};
get_buy_info(18) -> {[{1, 100000000}], [{39052, 80}]};
get_buy_info(19) -> {[{59041, 5}], [{29923, 50}]};
get_buy_info(20) -> {[{59040, 10}], [{59041, 1}]};
get_buy_info(21) -> {[{90515, 1}], [{35, 10}]};
get_buy_info(22) -> {[{39414, 50}], [{59041, 2}]};
get_buy_info(23) -> {[{90515, 10}], [{91000, 10}]};
get_buy_info(24) -> {[{90514, 10}], [{90900, 10}]};
get_buy_info(25) -> {[{59041, 5}], [{299905, 50}]};
get_buy_info(26) -> {[{59041, 5}], [{299906, 50}]};
get_buy_info(27) -> {[{59041, 5}], [{299907, 50}]};
get_buy_info(28) -> {[{59041, 5}], [{299908, 50}]};
get_buy_info(29) -> {[{59041, 5}], [{299909, 50}]};
get_buy_info(30) -> {[{59041, 5}], [{2999010, 50}]};
get_buy_info(_Info) ->
    logger:data_error("get_buy_info_data_not_exist===>~w",
		      [_Info], holiday_exchange_data, 44),
    undefined.

list() ->
    [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16,
     17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30].

get_limit(1) -> [{lev, 1, 999}];
get_limit(2) -> [{lev, 1, 999}];
get_limit(3) -> [{lev, 1, 999}];
get_limit(4) -> [{lev, 1, 999}];
get_limit(5) -> [{lev, 1, 999}];
get_limit(6) -> [{lev, 1, 999}];
get_limit(7) -> [{lev, 1, 999}];
get_limit(8) -> [{lev, 1, 999}];
get_limit(9) -> [{lev, 1, 999}];
get_limit(10) -> [{lev, 1, 999}];
get_limit(11) -> [{lev, 1, 999}];
get_limit(12) -> [{lev, 1, 999}];
get_limit(13) -> [{lev, 1, 999}];
get_limit(14) -> [{lev, 1, 999}];
get_limit(15) -> [{lev, 1, 999}];
get_limit(16) -> [{lev, 1, 999}];
get_limit(17) -> [{lev, 1, 999}];
get_limit(18) -> [{lev, 1, 999}];
get_limit(19) -> [{lev, 1, 999}];
get_limit(20) -> [{lev, 1, 999}];
get_limit(21) -> [{lev, 1, 999}];
get_limit(22) -> [{lev, 1, 999}];
get_limit(23) -> [{lev, 1, 999}];
get_limit(24) -> [{lev, 1, 999}];
get_limit(25) -> [{lev, 1, 999}];
get_limit(26) -> [{lev, 1, 999}];
get_limit(27) -> [{lev, 1, 999}];
get_limit(28) -> [{lev, 1, 999}];
get_limit(29) -> [{lev, 1, 999}];
get_limit(30) -> [{lev, 1, 999}];
get_limit(_Info) ->
    logger:data_error("get_limit_data_not_exist===>~w",
		      [_Info], holiday_exchange_data, 81),
    undefined.

get_limit_info(1) -> {0, 999999, 0, 0};
get_limit_info(2) -> {0, 999999, 0, 0};
get_limit_info(3) -> {0, 999999, 0, 0};
get_limit_info(4) -> {0, 999999, 0, 0};
get_limit_info(5) -> {0, 999999, 0, 0};
get_limit_info(6) -> {0, 999999, 0, 0};
get_limit_info(7) -> {0, 999999, 0, 0};
get_limit_info(8) -> {0, 999999, 0, 0};
get_limit_info(9) -> {0, 999999, 0, 0};
get_limit_info(10) -> {0, 999999, 0, 0};
get_limit_info(11) -> {0, 999999, 0, 0};
get_limit_info(12) -> {0, 999999, 0, 0};
get_limit_info(13) -> {0, 999999, 0, 0};
get_limit_info(14) -> {0, 999999, 0, 0};
get_limit_info(15) -> {0, 999999, 0, 0};
get_limit_info(16) -> {0, 999999, 0, 0};
get_limit_info(17) -> {0, 999999, 0, 0};
get_limit_info(18) -> {0, 999999, 0, 0};
get_limit_info(19) -> {0, 999999, 0, 0};
get_limit_info(20) -> {0, 999999, 0, 0};
get_limit_info(21) -> {0, 999999, 0, 0};
get_limit_info(22) -> {0, 999999, 0, 0};
get_limit_info(23) -> {0, 999999, 0, 0};
get_limit_info(24) -> {0, 999999, 0, 0};
get_limit_info(25) -> {0, 999999, 0, 0};
get_limit_info(26) -> {0, 999999, 0, 0};
get_limit_info(27) -> {0, 999999, 0, 0};
get_limit_info(28) -> {0, 999999, 0, 0};
get_limit_info(29) -> {0, 999999, 0, 0};
get_limit_info(30) -> {0, 999999, 0, 0};
get_limit_info(_Info) ->
    logger:data_error("get_limit_info_data_not_exist===>~w",
		      [_Info], holiday_exchange_data, 115),
    undefined.


