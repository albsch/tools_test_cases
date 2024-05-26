-module(case_predicates_2).
-compile([nowarn_export_all, export_all]).

%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%%
%%% This source code is licensed under the Apache 2.0 license found in
%%% the LICENSE file in the root directory of this source tree.
-type child() :: undefined | pid().

-spec wrap2(
    atom() | pid()
) -> {a, atom()} | {p, pid()}.
wrap2(X) ->
  case is_atom(X) of
    true -> {a, X};
    false -> {p, X}
  end.
