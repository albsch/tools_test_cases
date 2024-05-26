-module(fault_tolerance_22).
-compile([nowarn_export_all, export_all]).

%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%%
%%% This source code is licensed under the Apache 2.0 license found in
%%% the LICENSE file in the root directory of this source tree.

-spec maps(map()) ->
  ok.
maps(M) ->
  M1 = M
    #{id := a + 1},
  M2 = M
    #{id := b + 2},
  M1 + M2.
