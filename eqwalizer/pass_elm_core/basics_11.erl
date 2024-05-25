-module(basics_11).
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

-spec min(A, A) -> A.
min(X1, X2) ->
    case lt(X1, X2) of
        true -> X1;
        false -> X2
    end.
-spec min(A) -> fun((A) -> A).
min(X1) -> fun (X2) -> basics:min(X1, X2) end.
