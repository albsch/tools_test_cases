-module(gradual_custom_40).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type version() :: {integer(), integer(), integer()}.
-spec min7_neg(number() | eqwalizer:dynamic(),
               atom() | eqwalizer:dynamic()) -> number().
min7_neg(X, Y) -> min(X, Y).
