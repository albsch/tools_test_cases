-module(basics_27).
-compile([nowarn_export_all, export_all]).

%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%%
%%% This source code is licensed under the Apache 2.0 license found in
%%% the LICENSE file in the root directory of this source tree.

-spec composeR(fun((A) -> B),
               fun((B) -> C)) -> fun((A) -> C).
composeR(F, G) -> fun (X) -> G(F(X)) end.
-spec composeR(fun((A) -> B)) -> fun((fun((B) -> C)) -> fun((A) -> C)).
composeR(F) -> fun (G) -> composeR(F, G) end.
