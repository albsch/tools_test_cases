-module(as_pat_8).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-record(box_a, {a :: atom()}).
-record(box_b, {b :: binary()}).
-record(box_n, {n :: number()}).
-type abn() :: atom() | binary() | number().
-type box() :: #box_a{} | #box_b{} | #box_n{}.
-spec unbox_a(#box_a{}) -> atom().
unbox_b({b, B}) -> B.
-spec unbox_n(#box_n{}) -> number().
unbox_n(#box_n{n = N}) -> N.
-spec unbox_b(#box_b{}) -> binary().
unbox_a(#box_a{a = A}) -> A.
-spec unboxL(box()) -> abn().
unboxL(BA = #box_a{}) -> unbox_a(BA);
unboxL(BB = #box_b{}) -> unbox_b(BB);
unboxL(BN = #box_n{}) -> unbox_n(BN).
