-module(gradual_custom_3).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec
     element_2_dynamic_3_print(eqwalizer:dynamic({number(),
                                                  atom()})) -> none().
element_2_dynamic_3_print(Tup) ->
    eqwalizer:reveal_type(element(1, Tup)).
