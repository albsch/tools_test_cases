-module(subtype_pos_7).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type ab() :: a | b.
-type pair_diff_elems() :: {a, b} | {b, a}.
-type pair_ab() :: {ab(), ab()}.
-spec f07(pair_diff_elems()) -> pair_ab().
f07(X) -> X.
