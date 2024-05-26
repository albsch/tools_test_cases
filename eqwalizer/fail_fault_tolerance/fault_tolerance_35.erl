-module(fault_tolerance_35).
-compile([nowarn_export_all, export_all]).

%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%%
%%% This source code is licensed under the Apache 2.0 license found in
%%% the LICENSE file in the root directory of this source tree.

% Error tolerance with fun args
-spec make_pair(K, number()) -> {K, number()}.
make_pair(K, V) -> {K, V}.
-spec map_pair([{K, V}], fun ((K, V) -> {K, A})) -> [{K, A}].
map_pair(_, _) -> error(unimplemented).
-spec apply_map([{atom(), term()}]) -> [{atom(), number()}].
apply_map(L) ->
    map_pair(L, fun make_pair/2).
