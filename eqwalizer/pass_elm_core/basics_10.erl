-module(basics_10).
-compile([nowarn_export_all, export_all]).

%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%%
%%% This source code is licensed under the Apache 2.0 license found in
%%% the LICENSE file in the root directory of this source tree.

-spec ge(A, A) -> boolean().
ge(X1, X2) -> X1 >= X2.
-spec ge(A) -> fun((A) -> boolean()).
ge(X1) -> fun (X2) -> ge(X1, X2) end.
