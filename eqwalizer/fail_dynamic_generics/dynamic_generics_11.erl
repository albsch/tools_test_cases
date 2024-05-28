-module(dynamic_generics_11).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec either({T, T}, T) -> T.
either({_, _}, A) -> A.
-spec unify_dyn_atom(eqwalizer:dynamic(), undef) -> ok.
unify_dyn_atom(D, A) ->
    eqwalizer:reveal_type(either(D, A)).
