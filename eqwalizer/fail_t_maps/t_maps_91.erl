-module(t_maps_91).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type b() :: boolean().
-type n() :: number().
-type a() :: atom().
-type foo_bar(F, B) :: #{foo := F, bar := B}.
-type foo_bar_opt(F, B) :: #{foo => F, bar => B}.
-type kv(K, V) :: #{K => V}.
-type rec_shape() :: #{item := rec_shape() | undefined}.
-type rec_shape_v2() :: #{item_v2 :=
                              rec_shape_v2() | undefined}.
-type gen_shape(T) :: #{item := T | gen_shape(T)}.
-type gen_shape_v2(T) :: #{item_v2 :=
                               T | gen_shape_v2(T)}.
-type gen_shape_expanded(T) :: #{item :=
                                     T | #{item := T | gen_shape_expanded(T)}}.
-export_type([a/0, n/0]).
-spec test_update_with_4(#{a := b},
                         fun((b) -> c)) -> #{a => b | c}.
test_update_with_4(Map, F) ->
    maps:update_with(a, F, a, Map).
