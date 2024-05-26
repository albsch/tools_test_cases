-module(fault_tolerance_16).
-compile([nowarn_export_all, export_all]).

%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%%
%%% This source code is licensed under the Apache 2.0 license found in
%%% the LICENSE file in the root directory of this source tree.

-spec 'case'
    (boolean(), atom()) -> number().
'case'(F, A) ->
  case F() of
    true -> A + 1;
    false -> A - 1
  end.
