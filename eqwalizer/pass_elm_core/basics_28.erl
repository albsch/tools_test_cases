-module(basics_28).
-compile([nowarn_export_all, export_all]).

%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%%
%%% This source code is licensed under the Apache 2.0 license found in
%%% the LICENSE file in the root directory of this source tree.

-spec apR(A, fun((A) -> B)) -> B.
apR(X, F) -> F(X).
-spec apR(A) -> fun((fun((A) -> B)) -> B).
apR(X) -> fun (F) -> apR(X, F) end.