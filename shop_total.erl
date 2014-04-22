-module(shop_total).
-export([total/1]).
-import(shop,[cost/1]).
-import(misc_lib,[map/2, sum/1]).

total(L)->
	sum([cost(What) * N || {What, N} <- L]).

