-module(tuple_5).
-compile([nowarn_export_all, export_all]).

%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%%
%%% This source code is licensed under the Apache 2.0 license found in
%%% the LICENSE file in the root directory of this source tree.

-spec map_second(fun((B) -> Y), {A, B}) -> {A, Y}.
map_second(F, {A, B}) -> {A, F(B)}.
-spec map_second(fun((B) -> Y)) -> fun(({A, B}) -> {A, Y}).
map_second(F) -> fun (P) -> map_second(F, P) end.
