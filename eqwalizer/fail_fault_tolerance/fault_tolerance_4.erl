-module(fault_tolerance_4).
-compile([nowarn_export_all, export_all]).

%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%%
%%% This source code is licensed under the Apache 2.0 license found in
%%% the LICENSE file in the root directory of this source tree.

-spec opacity_tolerance
    (atom(), misc:o()) -> atom().
opacity_tolerance(a, _) ->
  1;
opacity_tolerance(b, _) ->
  2;
opacity_tolerance(_, {_}) ->
  3;
opacity_tolerance(c, _) ->
  4.
