-module(dynamic_refine_21).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-record(foo, {id :: integer()}).
-record(rec_err, {a :: err, b :: binary()}).
-record(ref_rec, {a :: eqwalizer:refinable(any())}).
-type dyn_alias() :: eqwalizer:dynamic().
-type union() :: {dyn_alias() | err}.
-type spec_union() :: {integer() | err}.
-type ref_rec1() :: #ref_rec{a :: integer()}.
-spec refine_is_list(eqwalizer:dynamic() |
                     error) -> atom().
refine_is_list(L) when is_list(L) -> lists:nth(1, L).
