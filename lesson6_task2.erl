-module(lesson6_task2).
-export([factors/1]).

factors(N) ->
    factors(N, 2, []).

factors(1, _, Acc) -> lists:reverse(Acc);
factors(N, F, Acc) when N rem F =:= 0 ->
    factors(N div F, F, [F | Acc]);
factors(N, F, Acc) ->
    factors(N, F + 1, Acc).
