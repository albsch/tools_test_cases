-module(fault_tolerance_18).
-compile([nowarn_export_all, export_all]).

%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%%
%%% This source code is licensed under the Apache 2.0 license found in
%%% the LICENSE file in the root directory of this source tree.

-spec dyn_call
    (module(), atom()) -> ok.
dyn_call(M, F) ->
  M:F(
    F + 1,
    -M
  ).
