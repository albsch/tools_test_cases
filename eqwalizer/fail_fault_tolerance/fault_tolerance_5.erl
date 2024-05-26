-module(fault_tolerance_5).
-compile([nowarn_export_all, export_all]).

%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%%
%%% This source code is licensed under the Apache 2.0 license found in
%%% the LICENSE file in the root directory of this source tree.

-spec too_many_errors
    (atom()) -> atom().
too_many_errors(a) ->
  1;
too_many_errors(b) ->
  2;
too_many_errors(c) ->
  3;
too_many_errors(d) ->
  4;
too_many_errors(e) ->
  5;
too_many_errors(f) ->
  6;
too_many_errors(g) ->
  7;
too_many_errors(h) ->
  8;
too_many_errors(i) ->
  9;
too_many_errors(j) ->
  10.
