-module(fault_tolerance_3).
-compile([nowarn_export_all, export_all]).

%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%%
%%% This source code is licensed under the Apache 2.0 license found in
%%% the LICENSE file in the root directory of this source tree.

-spec b_to_n3(boolean()) ->
  number().
b_to_n3(true) ->
  true;
b_to_n3(A) ->
  A.
