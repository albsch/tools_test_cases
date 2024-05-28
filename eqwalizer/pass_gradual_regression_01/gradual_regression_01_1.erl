-module(gradual_regression_01_1).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type foo() :: eqwalizer:dynamic() | none.
-spec maybe1(term()) -> foo().
maybe1(_) -> error(test).
