%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%%
%%% This source code is licensed under the Apache 2.0 license found in
%%% the LICENSE file in the root directory of this source tree.

-module(list).

-compile([nowarn_export_all, export_all]).

-spec singleton(A) -> [A].
singleton(Val) -> [Val].

-spec repeat_help([A], integer(), A) -> [A].
repeat_help(Res, N, _Val) when N =< 0 -> Res;
repeat_help(Res, N, Val) ->
    repeat_help([Val | Res], N, Val).
-spec repeat(integer(), A) -> [A].
repeat(N, Val) -> repeat_help([], N, Val).

-spec cons(A, [A]) -> [A].
cons(H, T) -> [H | T].

-spec map(fun((A) -> B), [A]) -> [B].
map(F, [H | T]) -> [F(H) | map(F, T)];
map(_F, []) -> [].

-spec range_help(integer(), integer(),
                 [integer()]) -> [integer()].
range_help(Lo, Hi, L) when Lo =< Hi ->
    range_help(Lo, Hi - 1, [Hi | L]);
range_help(_Lo, _Hi, L) -> L.
-spec range(integer(), integer()) -> [integer()].
range(Lo, Hi) -> range_help(Lo, Hi, []).
-spec indexed_map(fun((integer(), A) -> B), [A]) -> [B].
indexed_map(F, Xs) ->
    map2(F, range(0, list:length(Xs) - 1), Xs).

-spec foldl(fun((A, B) -> B), B, [A]) -> B.
foldl(F, Acc, [H | T]) -> foldl(F, F(H, Acc), T);
foldl(_F, Acc, []) -> Acc.

-spec foldr(fun((A, B) -> B), B, [A]) -> B.
foldr(F, Acc, [H | T]) -> F(H, foldr(F, Acc, T));
foldr(_F, Acc, []) -> Acc.

-spec filter(fun((A) -> boolean()), [A]) -> [A].
filter(F, List) ->
    foldr(fun (X, Xs) ->
                  case F(X) of
                      true -> [X | Xs];
                      false -> Xs
                  end
          end,
          [],
          List).

-spec length([_]) -> integer().
length(Xs) -> foldl(fun (_, I) -> I + 1 end, 0, Xs).

-spec reverse([A]) -> [A].
reverse(Xs) -> foldl(fun cons/2, [], Xs).

-spec member(A, [A]) -> boolean().
member(X, Xs) -> any(basics:eq(X), Xs).

-spec all(fun((A) -> boolean()), [A]) -> boolean().
all(Pred, [H | T]) ->
    case Pred(H) of
        true -> all(Pred, T);
        false -> false
    end;
all(_Pred, []) -> true.

-spec any(fun((A) -> boolean()), [A]) -> boolean().
any(Pred, [H | T]) ->
    case Pred(H) of
        true -> true;
        false -> any(Pred, T)
    end;
any(_Pred, []) -> false.

-spec sum([integer()]) -> integer().
sum(Ns) -> foldl(fun basics:add/2, 0, Ns).

-spec product([integer()]) -> integer().
product(Ns) -> foldl(fun basics:mul/2, 0, Ns).

-spec append([A], [A]) -> [A].
append(Xs, Ys) -> Xs ++ Ys.

-spec concat([[A]]) -> [A].
concat(Lists) -> foldr(fun append/2, [], Lists).

-spec concat_map(fun((A) -> [B]), [A]) -> [B].
concat_map(F, Xs) -> concat(map(F, Xs)).

-spec intersperse(A, [A]) -> [A].
intersperse(Sep, [H | T]) ->
    Spersed = foldr(fun (X, Rest) -> [Sep, X | Rest] end, [], T),
    [H | Spersed];
intersperse(_Sep, []) -> [].

-spec map2(fun((A, B) -> Res), [A], [B]) -> [Res].
map2(F, [H1 | T1], [H2 | T2]) ->
    [F(H1, H2) | map2(F, T1, T2)];
map2(_, _, _) -> [].

-spec is_empty([_]) -> boolean().
is_empty([_ | _]) -> false;
is_empty([]) -> true.

-spec take(integer(), [A]) -> [A].
take(N, _L) when N =< 0 -> [];
take(_N, []) -> [];
take(N, [H | T]) -> [H | take(N - 1, T)].

-spec drop(integer(), [A]) -> [A].
drop(N, L) when N =< 0 -> L;
drop(_N, []) -> [];
drop(N, [_H | T]) -> drop(N - 1, T).

-spec partition(fun((A) -> boolean()), [A]) ->
    {[A], [A]}.
partition(Pred, List) ->
    foldr(
        fun (X, {Trues, Falses}) ->
            case Pred(X) of
                true -> {[X | Trues], Falses};
                false -> {Trues, [X | Falses]}
            end
        end,
        {[], []},
        List
    ).

-spec unzip([{A, B}]) -> {[A], [B]}.
unzip(Pairs) ->
    foldr(
        fun ({X, Y}, {Xs, Ys}) -> {[X | Xs], [Y | Ys]} end,
        {[], []},
        Pairs
    ).