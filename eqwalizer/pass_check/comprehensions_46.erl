-module(comprehensions_46).
-compile([nowarn_export_all, export_all]).

%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%%
%%% This source code is licensed under the Apache 2.0 license found in
%%% the LICENSE file in the root directory of this source tree.
-record(rec1, {
    b :: undefined | binary(),
    s :: undefined | string()
}).
-record(rec2, {
    b :: undefined | binary(),
    s :: undefined | string()
}).

-spec gen1() -> [binary() | undefined].
gen1() -> error(undefined).
-spec test45() -> [binary()].
test45() ->
    Res = [
        X || X <- gen1(),
        X /= undefined
    ],
    Res.
