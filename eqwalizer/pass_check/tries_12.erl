-module(tries_12).
-compile([nowarn_export_all, export_all]).

%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%%
%%% This source code is licensed under the Apache 2.0 license found in
%%% the LICENSE file in the root directory of this source tree.

-spec test01_pos() -> atom().
test01_pos() ->
    try foo() of
        {X, _} -> X
    catch
        {error, _} -> error
    end.
