-module(gradual_overloaded_8).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-record(r, {count :: integer()}).
-spec fst_gen({A}) -> A;
             ([A]) -> A.
fst_gen({A}) -> A;
fst_gen([A]) -> A.
-spec
     use_fst_gen3(eqwalizer:dynamic()) -> eqwalizer:dynamic().
use_fst_gen3(X) -> fst_gen(X).