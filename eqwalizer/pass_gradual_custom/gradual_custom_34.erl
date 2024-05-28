-module(gradual_custom_34).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type version() :: {integer(), integer(), integer()}.
-spec min1(integer(),
           integer() | undefined) -> integer().
min1(X, Y) -> min(X, Y).
