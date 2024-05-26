-module(fault_tolerance_1).
-compile([nowarn_export_all, export_all]).

%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%%
%%% This source code is licensed under the Apache 2.0 license found in
%%% the LICENSE file in the root directory of this source tree.

-spec b_to_n1(boolean()) ->
  number().
b_to_n1(true) ->
  true;
b_to_n1(false) ->
  false.
