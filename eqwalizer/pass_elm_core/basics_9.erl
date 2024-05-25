-module(basics_9).
-compile([nowarn_export_all, export_all]).

%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%%
%%% This source code is licensed under the Apache 2.0 license found in
%%% the LICENSE file in the root directory of this source tree.

-spec le(A, A) -> boolean().
le(X1, X2) -> X1 =< X2.
-spec le(A) -> fun((A) -> boolean()).
le(X1) -> fun (X2) -> le(X1, X2) end.