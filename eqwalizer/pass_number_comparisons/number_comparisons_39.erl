-module(number_comparisons_39).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec test_30(a | pos_integer()) -> pos_integer().
test_30(X) when is_integer(X) -> X.
