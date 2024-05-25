-module(basics_23).
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

-spec gt(A, A) -> boolean().
gt(X1, X2) -> X1 > X2.
-spec gt(A) -> fun((A) -> boolean()).
gt(X1) -> fun (X2) -> gt(X1, X2) end.

-spec clamp(integer(), integer(),
            integer()) -> integer().
clamp(Low, High, Num) ->
    case lt(Num, Low) of
        true -> Low;
        false ->
            case gt(Num, High) of
                true -> High;
                false -> Num
            end
    end.
