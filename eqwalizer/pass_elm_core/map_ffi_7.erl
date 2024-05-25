-module(map_ffi_7).
-compile([nowarn_export_all, export_all]).

%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%%
%%% This source code is licensed under the Apache 2.0 license found in
%%% the LICENSE file in the root directory of this source tree.

-type map_(K, V) :: #{K => V}.

-spec filter(fun((K, V) -> boolean()),
             map_(K, V)) -> map_(K, V).
filter(F, Map) -> maps:filter(F, Map).