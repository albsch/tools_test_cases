-module(basics_12).
-compile([nowarn_export_all, export_all]).

%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%%
%%% This source code is licensed under the Apache 2.0 license found in
%%% the LICENSE file in the root directory of this source tree.

-spec max(A, A) -> A.
max(X1, X2) ->
    case gt(X1, X2) of
        true -> X1;
        false -> X2
    end.
-spec max(A) -> fun((A) -> A).
max(X1) -> fun (X2) -> basics:max(X1, X2) end.
