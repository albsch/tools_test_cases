-module(gradual_bounded_14).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-record(rec, {field :: atom()}).
-type dyn(T) :: eqwalizer:dynamic(T).
-spec bd_distrib_print(dyn({a, b})) -> err.
bd_distrib_print({a, V}) -> eqwalizer:reveal_type(V).
