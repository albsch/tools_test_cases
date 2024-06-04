-module(type_asserts_7).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec any_to_atom1(string() | binary()) -> false |
                                           atom().
any_to_atom1(A) ->
    Res = is_list(A) andalso list_to_atom(A),
    Res.
