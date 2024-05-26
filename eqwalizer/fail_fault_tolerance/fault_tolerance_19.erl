-module(fault_tolerance_19).
-compile([nowarn_export_all, export_all]).

%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%%
%%% This source code is licensed under the Apache 2.0 license found in
%%% the LICENSE file in the root directory of this source tree.

-spec comprehensions1() -> ok.
comprehensions1() ->
  [X ||
    X <- #{
      a => b,
      c => d + 1
    },
    atom_to_binary(
      {X}
    )].
