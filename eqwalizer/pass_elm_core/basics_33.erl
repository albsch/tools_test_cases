-module(basics_33).
-compile([nowarn_export_all, export_all]).

%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%%
%%% This source code is licensed under the Apache 2.0 license found in
%%% the LICENSE file in the root directory of this source tree.

-type never() :: {'$#basics:never.just_one_more',
                  never()}.
-spec never(never()) -> _.
never({'$#basics:never.just_one_more', Nvr}) ->
    never(Nvr).
