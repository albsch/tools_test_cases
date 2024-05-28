-module(guards_logic_3).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec test03(atom(), atom()) -> boolean().
test03(X, _) when X -> X;
test03(_, Y) when Y -> Y.
