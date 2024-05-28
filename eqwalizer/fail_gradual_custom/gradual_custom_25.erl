-module(gradual_custom_25).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type version() :: {integer(), integer(), integer()}.
-spec
     maps_without_2_neg(eqwalizer:dynamic()) -> wrong_ret.
maps_without_2_neg(Dyn) -> maps:without([a], Dyn).
