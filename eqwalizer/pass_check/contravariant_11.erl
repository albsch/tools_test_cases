-module(contravariant_11).
-compile([nowarn_export_all, export_all]).

%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%%
%%% This source code is licensed under the Apache 2.0 license found in
%%% the LICENSE file in the root directory of this source tree.
%%% 
-type contravariant(X) :: fun((X) -> ok).

-type ref_contravariant(X) :: contravariant(X).

-type ref_contravariant_ab() :: ref_contravariant(a | b).

-opaque opaque_ref_contra_ab() :: ref_contravariant_ab().

-opaque recur_contra(X) :: fun((recur_contra(X)) -> X).

-type complex_expansion_1(X) :: #{a => contravariant(X)}.

-type complex_expansion_2(X) :: {complex_expansion_2(X), complex_expansion_1(X)} | nil.
-type stream(A) :: eos | {head, A}.
-type predicate(A) :: fail | {next, fun((stream(A)) -> predicate(A))}.
-type constant(X) :: {a, constant(X)} | nil.

-opaque opaque_ok(X) :: X.

-opaque contra_in_opaque(X) :: opaque_ok(contravariant(X)).

-record(my_rec, {a :: eqwalizer:refinable(term())}).
-type runnable(A) :: fun((A) -> ok).
-type id(A) :: fun((A) -> A).

-type next(A) ::
    eos | {head, A}.

-type pred(A) ::
    {check, fun((next(A)) -> pred(A))}
    | stop.

-spec log(term()) -> ok.
log(Thing) ->
    io:format("~p~n", [Thing]).

-spec log_runnable4
    (fun((atom()) -> ok)) -> fun((atom()) -> ok).
log_runnable4(F) ->
    fun(A) ->
        log(A),
        F(A)
    end.
