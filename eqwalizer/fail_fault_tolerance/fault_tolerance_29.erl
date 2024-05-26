-module(fault_tolerance_29).
-compile([nowarn_export_all, export_all]).

%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%%
%%% This source code is licensed under the Apache 2.0 license found in
%%% the LICENSE file in the root directory of this source tree.

-record(rec, {
  id :: integer(),
  pid :: pid()
}).
-spec rec3() -> atom().
rec3() ->
  Res = #rec{
    _ = <<>>
  },
  Res.
