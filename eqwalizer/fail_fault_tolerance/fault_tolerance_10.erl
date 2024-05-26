-module(fault_tolerance_10).
-compile([nowarn_export_all, export_all]).

%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%%
%%% This source code is licensed under the Apache 2.0 license found in
%%% the LICENSE file in the root directory of this source tree.

-spec maps_update1
    (term(), atom(), atom()) -> atom().
maps_update1(M, K, V) ->
  M1 = M#{
    K :=
      V +
        V},
  M1.
