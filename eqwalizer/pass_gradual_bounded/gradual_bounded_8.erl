-module(gradual_bounded_8).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-record(rec, {field :: atom()}).
-type dyn(T) :: eqwalizer:dynamic(T).
-spec bd_map_03(dyn(not_a_map)) -> atom().
bd_map_03(M) -> maps:get(at, M).
