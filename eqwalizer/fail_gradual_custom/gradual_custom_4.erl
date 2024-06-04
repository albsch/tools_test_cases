-module(gradual_custom_4).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type version() :: {integer(), integer(), integer()}.
-spec
     element_2_dynamic_4_print(eqwalizer:dynamic(number())) -> none().
element_2_dynamic_4_print(Tup) ->
    eqwalizer:reveal_type(element(1, Tup)).