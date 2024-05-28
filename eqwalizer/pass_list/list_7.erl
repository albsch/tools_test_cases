-module(list_7).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec map(fun((A) -> B), [A]) -> [B].
map(F, [H | T]) -> [F(H) | map(F, T)];
map(_F, []) -> [].
