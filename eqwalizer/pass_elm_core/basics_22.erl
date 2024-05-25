-module(basics_22).
-compile([nowarn_export_all, export_all]).

%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%%
%%% This source code is licensed under the Apache 2.0 license found in
%%% the LICENSE file in the root directory of this source tree.
%%% 
-spec lt(A, A) -> boolean().
lt(X1, X2) -> X1 < X2.
-spec lt(A) -> fun((A) -> boolean()).
lt(X1) -> fun (X2) -> lt(X1, X2) end.

-spec abs(integer()) -> integer().
abs(X) ->
    case lt(X, 0) of
        true -> -X;
        false -> X
    end.
