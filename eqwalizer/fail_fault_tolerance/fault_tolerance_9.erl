-module(fault_tolerance_9).
-compile([nowarn_export_all, export_all]).

%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%%
%%% This source code is licensed under the Apache 2.0 license found in
%%% the LICENSE file in the root directory of this source tree.

%% SUBTLE/INTERESTING CASES %%
%% More errors are reported comparing
%% to "sentinel" approach.
-spec lists_append
    (map(), map()) -> map().
lists_append(M1, M2) ->
  Res = lists:append(
    M1,
    M2
  ),
  Res.
