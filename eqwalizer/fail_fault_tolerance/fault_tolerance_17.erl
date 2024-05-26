-module(fault_tolerance_17).
-compile([nowarn_export_all, export_all]).

%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%%
%%% This source code is licensed under the Apache 2.0 license found in
%%% the LICENSE file in the root directory of this source tree.

-spec 'if'
    (boolean(), atom()) -> number().
'if'(F, A) ->
  if
    F -> A + 1;
    true -> A - 1
  end.
