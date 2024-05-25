-module(map_ffi_4).
-compile([nowarn_export_all, export_all]).

%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%%
%%% This source code is licensed under the Apache 2.0 license found in
%%% the LICENSE file in the root directory of this source tree.

-type map_(K, V) :: #{K => V}.

-spec remove(K, map_(K, V)) -> map_(K, V).
remove(Key, Map) -> maps:remove(Key, Map).