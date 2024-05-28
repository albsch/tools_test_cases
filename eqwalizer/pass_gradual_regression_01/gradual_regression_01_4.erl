-module(gradual_regression_01_4).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type foo() :: eqwalizer:dynamic() | none.
-spec maybe2(term()) -> eqwalizer:dynamic() | none.
maybe2(_) -> error(test).
-spec simple2(term()) -> binary().
simple2(X) ->
    Maybe = maybe2(X),
    case Maybe of
        none -> <<>>;
        Bin -> Bin
    end.
