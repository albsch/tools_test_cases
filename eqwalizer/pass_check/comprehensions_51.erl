-module(comprehensions_51).
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

-spec modules2
    (unicode:chardata())
        -> [module()].
modules2(P) ->
    AllModules = [
        list_to_atom(M)
        || {M, F, _}
            <- code:all_available(),
        F =/= preloaded,
        F =/= cover_compiled,
        string:prefix(F, P) =/= nomatch
    ],
    AllModules.