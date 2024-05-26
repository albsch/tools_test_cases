-module(fault_tolerance_23).
-compile([nowarn_export_all, export_all]).

%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%%
%%% This source code is licensed under the Apache 2.0 license found in
%%% the LICENSE file in the root directory of this source tree.

-spec binary1(atom(), atom()) -> atom().
binary1(A, S) ->
  B = <<
    A:
    S
  >>,
  B + 1.
