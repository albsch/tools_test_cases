-module(redundant_guards_1).
-compile([nowarn_export_all, export_all]).

%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%%
%%% This source code is licensed under the Apache 2.0 license found in
%%% the LICENSE file in the root directory of this source tree.

-spec redundant_guard_1(ok) -> ok.
redundant_guard_1(X) ->
    (is_atom(X) orelse error(fail)),
    X.
