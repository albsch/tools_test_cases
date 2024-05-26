-module(fault_tolerance_27).
-compile([nowarn_export_all, export_all]).

%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%%
%%% This source code is licensed under the Apache 2.0 license found in
%%% the LICENSE file in the root directory of this source tree.

-record(rec, {
  id :: integer(),
  pid :: pid()
}).
-spec rec1(pid(), integer()) -> atom().
rec1(Pid, Id) ->
  Res = #rec{
    id = Pid,
    pid = Id
  },
  Res.
