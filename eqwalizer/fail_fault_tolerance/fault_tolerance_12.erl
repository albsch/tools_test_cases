-module(fault_tolerance_12).
-compile([nowarn_export_all, export_all]).

%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%%
%%% This source code is licensed under the Apache 2.0 license found in
%%% the LICENSE file in the root directory of this source tree.

% Similar
-spec lists_flatten
    (term(), any()) -> atom().
lists_flatten(L1, L2) ->
  Res =
    lists:flatten(
      L1,
      L2
    ),
  Res.
