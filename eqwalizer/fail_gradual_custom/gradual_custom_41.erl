-module(gradual_custom_41).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type version() :: {integer(), integer(), integer()}.
-spec min8_neg(eqwalizer:dynamic() | atom() | none(),
               eqwalizer:dynamic() | {none()}) -> number().
min8_neg(X, Y) ->
    Y = min(X, Y),
    eqwalizer:reveal_type(Y),
    Y.
