-module(gradual_custom_31).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec filename_join_2_dyn2(eqwalizer:dynamic()) -> ok.
filename_join_2_dyn2(Dyn) ->
    Res = filename:join(Dyn, Dyn),
    eqwalizer:reveal_type(Res),
    Res.
