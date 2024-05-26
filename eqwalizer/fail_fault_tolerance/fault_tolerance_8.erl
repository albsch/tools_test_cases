-module(fault_tolerance_8).
-compile([nowarn_export_all, export_all]).

%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%%
%%% This source code is licensed under the Apache 2.0 license found in
%%% the LICENSE file in the root directory of this source tree.

-spec lambda_arity([number()], atom()) ->
  number().
lambda_arity(Ns, A) ->
  X = lists:map(fun(_X, _Y) -> 1 end, Ns),
  Y =
    X +
      A,
  Y.
