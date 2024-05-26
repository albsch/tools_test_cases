-module(fault_tolerance_30).
-compile([nowarn_export_all, export_all]).

%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%%
%%% This source code is licensed under the Apache 2.0 license found in
%%% the LICENSE file in the root directory of this source tree.

-spec receive1()
      -> number().
receive1() ->
  receive
    {N} ->
      atom_to_binary(
        [N]
          ++ a
      );
    N ->
      atom_to_binary(
        <<N>>
          ++ b
      )
  end.
