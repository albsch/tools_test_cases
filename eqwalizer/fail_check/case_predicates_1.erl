-module(case_predicates_1).
-compile([nowarn_export_all, export_all]).

%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%%
%%% This source code is licensed under the Apache 2.0 license found in
%%% the LICENSE file in the root directory of this source tree.
-type child() :: undefined | pid().

-spec my_apply(term(), term())
      -> ok | not_ok.
my_apply(X, Y) ->
  case {is_atom(X), is_atom(Y)} of
    {true, true} -> aa(X, Y);
    {true, _} -> a(X);
    {_, true} -> a(Y);
    _ -> not-ok
  end.
-spec aa(atom(), atom()) -> ok.
aa(_, _) -> ok.
-spec a(atom()) -> ok.
a(_) -> ok.
