-module(gradual_custom_27).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type version() :: {integer(), integer(), integer()}.
-spec maps_with_1(eqwalizer:dynamic()) -> #{atom() =>
                                                y | z}.
maps_with_1(Dyn) -> maps:with([Dyn], #{a => y, b => z}).
