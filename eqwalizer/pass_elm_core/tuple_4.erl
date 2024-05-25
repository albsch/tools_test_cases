-module(tuple_4).
-compile([nowarn_export_all, export_all]).

%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%%
%%% This source code is licensed under the Apache 2.0 license found in
%%% the LICENSE file in the root directory of this source tree.

-spec map_first(fun((A) -> X), {A, B}) -> {X, B}.
map_first(F, {A, B}) -> {F(A), B}.
-spec map_first(fun((A) -> X)) -> fun(({A, B}) -> {X, B}).
map_first(F) -> fun (P) -> map_first(F, P) end.
