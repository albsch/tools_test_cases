-module(case_predicates_5).
-compile([nowarn_export_all, export_all]).

%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%%
%%% This source code is licensed under the Apache 2.0 license found in
%%% the LICENSE file in the root directory of this source tree.
-type child() :: undefined | pid().

-spec wrap5(
    child() | restarting
) -> {p, pid()} | undefined.
wrap5(X) ->
  case is_pid(X) of
    true -> {p, X};
    _ -> X
  end.
