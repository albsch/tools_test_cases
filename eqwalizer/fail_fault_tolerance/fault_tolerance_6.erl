-module(fault_tolerance_6).
-compile([nowarn_export_all, export_all]).

%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%%
%%% This source code is licensed under the Apache 2.0 license found in
%%% the LICENSE file in the root directory of this source tree.

-spec b_to_n(boolean()) ->
  number().
b_to_n(false) ->
  0;
b_to_n(true) ->
  1.
-spec visible_cast
    (number()) -> number().
visible_cast(N) ->
  erlang:atom_to_binary(
    b_to_n(
      N
    )
  ).
