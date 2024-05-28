-module(gradual_regression_01_5).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type foo() :: eqwalizer:dynamic() | none.
-spec maybe1(term()) -> foo().
maybe1(_) -> error(test).
-spec tuple1(term(), term()) -> {binary(), binary()}.
tuple1(X, Y) ->
    Maybe1 = maybe1(X),
    Maybe2 = maybe1(Y),
    case {Maybe1, Maybe2} of
        {none, none} -> {<<>>, <<>>};
        {Bin1, none} -> {Bin1, <<>>};
        {none, Bin2} -> {<<>>, Bin2};
        {Bin1, Bin2} -> {Bin1, Bin2}
    end.
