-module(gradual_bounded_16).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-record(rec, {field :: atom()}).
-type dyn(T) :: eqwalizer:dynamic(T).
-spec bd_generic_fun(dyn(T), T) -> T.
bd_generic_fun(_, _) -> throw(impl).
-spec bd_generics_01() -> atom() | number().
bd_generics_01() -> bd_generic_fun(test, 42).