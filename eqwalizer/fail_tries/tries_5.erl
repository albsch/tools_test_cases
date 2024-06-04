-module(tries_5).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec foo() -> {atom(), term()}.
foo() -> {foo, bar}.
-spec test02_neg() -> atom().
test02_neg() ->
    try foo() of {_, Y} -> Y catch {error, _} -> error end.
