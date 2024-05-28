-module(eqwater_59).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-record(eqwater, {f1, f2}).
-record(rec,
        {id1 :: undefined | integer(),
         id2 :: undefined | integer()}).
-record(a_rec, {a :: atom()}).
-record(ab_rec, {ab :: atom() | binary()}).
-record(a, {id :: atom()}).
-record(b, {id :: atom()}).
-record(c, {id :: atom()}).
-record(union_field, {field :: atom() | binary()}).
-record(union_field2, {field :: #a{} | #b{}}).
-record(union_field3,
        {union :: atom() | binary(), field :: atom()}).
-record(union_field4,
        {x :: integer() | ok, y :: integer() | err}).
-record(triple_union, {field :: #a{} | #b{} | #c{}}).
-record(refrec,
        {z = undefined ::
             eqwalizer:refinable(undefined | string())}).
-record(one_field, {f1 :: integer()}).
-record(two_fields1,
        {f1 :: integer(), f2 :: integer()}).
-record(two_fields2,
        {f1 :: integer(), f2 :: integer()}).
-record(response,
        {id1 :: undefined | number(),
         id2 :: undefined | number(),
         id3 :: undefined | number(),
         id4 :: undefined | number(),
         id5 :: undefined | number(),
         id6 :: undefined | number(),
         id7 :: undefined | number()}).
-record(rec10,
        {f1 :: a | b, f2 :: undefined | binary()}).
-record(string_or_def,
        {value :: string() | undefined, default :: string()}).
-type refrec1() :: #refrec{z :: string()}.
-type result(A) :: {ok, A} | {err, atom()}.
-type choice(A) :: {bad, A} | {good, A}.
-type error() :: {err, atom()}.
-type rich_tuple() :: {atom(), integer()} |
                      {integer(), atom()}.
-type t10() :: {atom(), a | b, undefined | binary()}.
-type m() :: #{a => a, b => b}.
-type my_list() :: {term(), my_list()} | number().
-spec record_occ07_tuple({union_field,
                          atom()}) -> binary().
record_occ07_tuple({_, A}) -> atom_to_binary(A).
-spec record_occ08_neg(#union_field{}) -> atom() |
                                          binary().
record_occ08_neg(#union_field{field = A})
    when is_atom(A) ->
    A;
record_occ08_neg(R) -> record_occ07_tuple(R).
