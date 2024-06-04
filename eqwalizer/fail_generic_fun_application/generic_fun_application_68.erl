-module(generic_fun_application_68).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type kv(K, V) :: #{K => V}.
-type tup(X, Y) :: {X, Y}.
-type invar(T) :: fun((T) -> T).
-type contravar(T) :: fun((T) -> ok).
-spec dict_vars(fun((#{{T} => T}) -> T), T) -> ok.
dict_vars(_, _) -> ok.
-spec test_dict3(fun((#{a => 1}) -> 1), 1) -> ok.
test_dict3(F, N) -> dict_vars(F, N).