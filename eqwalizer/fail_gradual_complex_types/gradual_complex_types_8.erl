-module(gradual_complex_types_8).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type complex_map() :: #{id := integer(),
                         {secret, id} => integer(), atom() => term()}.
-type dyn_map() :: #{eqwalizer:dynamic() =>
                         eqwalizer:dynamic()}.
-spec
     map_update_req(eqwalizer:dynamic()) -> eqwalizer:dynamic().
map_update_req(M) ->
    M1 = M#{a := 1},
    eqwalizer:reveal_type(M1),
    M1.
