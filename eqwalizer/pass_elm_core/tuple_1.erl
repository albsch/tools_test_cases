-module(tuple_1).
-compile([nowarn_export_all, export_all]).

%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%%
%%% This source code is licensed under the Apache 2.0 license found in
%%% the LICENSE file in the root directory of this source tree.

-spec pair(A, B) -> {A, B}.
pair(A, B) -> {A, B}.
-spec pair(A) -> fun((B) -> {A, B}).
pair(A) -> fun (B) -> pair(A, B) end.
