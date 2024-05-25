-module(basics_25).
-compile([nowarn_export_all, export_all]).

%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%%
%%% This source code is licensed under the Apache 2.0 license found in
%%% the LICENSE file in the root directory of this source tree.

-spec composeL(fun((B) -> C),
               fun((A) -> B)) -> fun((A) -> C).
composeL(G, F) -> fun (X) -> G(F(X)) end.
-spec composeL(fun((B) -> C)) -> fun((fun((A) -> B)) -> fun((A) -> C)).
composeL(G) -> fun (F) -> composeL(G, F) end.