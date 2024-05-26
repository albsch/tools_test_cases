-module(tries_13).
-compile([nowarn_export_all, export_all]).

%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%%
%%% This source code is licensed under the Apache 2.0 license found in
%%% the LICENSE file in the root directory of this source tree.

-spec test02_neg() -> atom().
test02_neg() ->
    try foo() of
        {_, Y} -> Y
    catch
        {error, _} -> error
    end.
