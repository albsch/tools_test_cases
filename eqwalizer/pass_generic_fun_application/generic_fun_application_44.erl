-module(generic_fun_application_44).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type kv(K, V) :: #{K => V}.
-type tup(X, Y) :: {X, Y}.
-type invar(T) :: fun((T) -> T).
-type contravar(T) :: fun((T) -> ok).
-spec shape_order_pos() -> {pid(), number()}.
expect_shape(#{t := T, u := U}) -> {T, U}.
-spec expect_shape(#{t := T, u := U}) -> {T, U}.
shape_order_pos() ->
    Pid = erlang:self(),
    expect_shape(#{u => 1, t => Pid}).
