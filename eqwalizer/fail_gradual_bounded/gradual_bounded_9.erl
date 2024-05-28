-module(gradual_bounded_9).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-record(rec, {field :: atom()}).
-type dyn(T) :: eqwalizer:dynamic(T).
-spec bd_map_put_01_print(dyn(#{b => c})) -> err.
bd_map_put_01_print(M) ->
    V = maps:put(42, a, M),
    eqwalizer:reveal_type(V).
