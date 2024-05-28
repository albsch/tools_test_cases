-module(generic_fun_application_2).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type kv(K, V) :: #{K => V}.
-type tup(X, Y) :: {X, Y}.
-type invar(T) :: fun((T) -> T).
-type contravar(T) :: fun((T) -> ok).
-spec test06_pos() -> {v2, v3, v1}.
tuple3_rotate({V1, V2, V3}) -> {V2, V3, V1}.
-spec tuple3_rotate({TT1, TT2, TT3}) -> {TT2, TT3, TT1}.
test06_pos() -> tuple3_rotate({v1, v2, v3}).
