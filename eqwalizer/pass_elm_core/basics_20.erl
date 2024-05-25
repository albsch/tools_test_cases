-module(basics_20).
-compile([nowarn_export_all, export_all]).

%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%%
%%% This source code is licensed under the Apache 2.0 license found in
%%% the LICENSE file in the root directory of this source tree.

-spec remainder_by(integer(), integer()) -> integer().
remainder_by(X1, X2) -> X2 rem X1.
-spec remainder_by(integer()) -> fun((integer()) -> integer()).
remainder_by(X1) ->
    fun (X2) -> remainder_by(X1, X2) end.
