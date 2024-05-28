-module(gradual_complex_types_9).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type complex_map() :: #{id := integer(),
                         {secret, id} => integer(), atom() => term()}.
-type dyn_map() :: #{eqwalizer:dynamic() =>
                         eqwalizer:dynamic()}.
-spec dyn_map_as_shape(dyn_map()) -> #{a => atom(),
                                       b => binary()}.
dyn_map_as_shape(DM) -> DM.
