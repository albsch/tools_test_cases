-module(case_predicates_4).
-compile([nowarn_export_all, export_all]).

%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%%
%%% This source code is licensed under the Apache 2.0 license found in
%%% the LICENSE file in the root directory of this source tree.
-type child() :: undefined | pid().

-spec wrap4(
    atom() | pid()
) -> {a, atom()} | {p, pid()}.
wrap4(X) ->
  case is_pid(X) of
    true -> {p, X};
    false -> {a, X}
  end.
