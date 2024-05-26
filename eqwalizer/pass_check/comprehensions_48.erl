-module(comprehensions_48).
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

-spec gen2() -> [#rec1{} | #rec2{}].
gen2() -> error(undefined).
-spec test47() -> [#rec1{}].
test47() ->
    Res = [
        Rec || Rec <- gen2(),
        is_record(Rec, rec1, 2)
    ],
    Res.
