-module(tuple_6).
-compile([nowarn_export_all, export_all]).

%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%%
%%% This source code is licensed under the Apache 2.0 license found in
%%% the LICENSE file in the root directory of this source tree.

-spec map_both(fun((A) -> X), fun((B) -> Y), {A, B}) -> {X, Y}.
map_both(Fa, Fb, {A, B}) -> {Fa(A), Fb(B)}.
-spec map_both(fun((A) -> X), fun((B) -> Y)) -> fun(({A, B}) -> {X, Y}).
map_both(Fa, Fb) -> fun (P) -> map_both(Fa, Fb, P) end.
