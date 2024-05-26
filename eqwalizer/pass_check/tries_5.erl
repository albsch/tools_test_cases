-module(tries_5).
-compile([nowarn_export_all, export_all]).

%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%%
%%% This source code is licensed under the Apache 2.0 license found in
%%% the LICENSE file in the root directory of this source tree.

-spec test10_pos() -> ok.
test10_pos() ->
    try ok() of
        X -> X
    after
        only_atom(atom)
    end.
