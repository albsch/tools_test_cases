-module(fault_tolerance_31).
-compile([nowarn_export_all, export_all]).

%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%%
%%% This source code is licensed under the Apache 2.0 license found in
%%% the LICENSE file in the root directory of this source tree.

-spec receive2()
      -> number().
receive2() ->
  receive
    {N} ->
      atom_to_binary(
        [N]
      );
    N ->
      atom_to_binary(
        <<N>>
      )
  after 10 ->
    []
  end.
