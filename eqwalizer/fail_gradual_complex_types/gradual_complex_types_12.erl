-module(gradual_complex_types_12).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type complex_map() :: #{id := integer(),
                         {secret, id} => integer(), atom() => term()}.
-type dyn_map() :: #{eqwalizer:dynamic() =>
                         eqwalizer:dynamic()}.
-spec generic(A, A) -> A.
generic(_, _) -> error(stub).
-spec use_generic_shape(dyn_map(),
                        #{a => atom()}) -> ok.
use_generic_shape(DM, S) -> generic(DM, S).
