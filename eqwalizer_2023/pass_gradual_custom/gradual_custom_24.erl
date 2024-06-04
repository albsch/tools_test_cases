-module(gradual_custom_24).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec maps_without_1(eqwalizer:dynamic()) -> #{atom() =>
                                                   y | z}.
maps_without_1(Dyn) ->
    maps:without([Dyn], #{a => y, b => z}).
