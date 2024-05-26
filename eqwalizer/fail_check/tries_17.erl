-module(tries_17).
-compile([nowarn_export_all, export_all]).

%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%%
%%% This source code is licensed under the Apache 2.0 license found in
%%% the LICENSE file in the root directory of this source tree.

-spec test06_neg() -> ok.
test06_neg() ->
    try ok()
    catch _ -> error
    end.
