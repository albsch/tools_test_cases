-module(use_dynamic_gradual_1).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec use_dynamic_type(eqwalizer:dynamic()) -> {atom()}.
use_dynamic_type(Dyn) -> {Dyn}.
