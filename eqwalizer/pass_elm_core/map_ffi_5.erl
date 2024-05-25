-module(map_ffi_5).
-compile([nowarn_export_all, export_all]).

%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%%
%%% This source code is licensed under the Apache 2.0 license found in
%%% the LICENSE file in the root directory of this source tree.

-type map_(K, V) :: #{K => V}.

-spec fold(fun((K, V, R) -> R), R, map_(K, V)) -> R.
fold(F, Acc, Map) -> maps:fold(F, Acc, Map).