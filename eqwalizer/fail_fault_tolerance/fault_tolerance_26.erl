-module(fault_tolerance_26).
-compile([nowarn_export_all, export_all]).

%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%%
%%% This source code is licensed under the Apache 2.0 license found in
%%% the LICENSE file in the root directory of this source tree.

-spec try2(atom()) -> atom().
try2(A) ->
  Res = try
          A()
        of
          {_} ->
            A + 1
        catch _ ->
          []
        after
          1 + a
        end,
  Res.
