-module(fault_tolerance_24).
-compile([nowarn_export_all, export_all]).

%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%%
%%% This source code is licensed under the Apache 2.0 license found in
%%% the LICENSE file in the root directory of this source tree.

-spec 'catch'(atom()) -> atom().
'catch'(F) ->
  Res =
    catch F(),
  Res.
