-module(lesson6_task1).
-export([sort/1]).

sort([]) -> [];
sort([X]) -> [X];
sort(List) ->
    lists:foldl(fun merge_sort_step/2, [], lists:seq(1, length(List))).

merge_sort_step(_, Acc) ->
    {Left, Right} = lists:split(length(Acc) div 2, Acc),
    merge(Left, Right).

merge([], Right) -> Right;
merge(Left, []) -> Left;
merge([H1 | T1], [H2 | T2]) when H1 =< H2 -> [H1 | merge(T1, [H2 | T2])];
merge(Left, [H2 | T2]) -> [H2 | merge(Left, T2)].
