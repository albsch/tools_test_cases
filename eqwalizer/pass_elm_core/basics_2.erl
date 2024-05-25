-module(basics_2).
-compile([nowarn_export_all, export_all]).

%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%%
%%% This source code is licensed under the Apache 2.0 license found in
%%% the LICENSE file in the root directory of this source tree.

-spec sub(integer(), integer()) -> integer().
sub(X1, X2) -> X1 - X2.
-spec sub(integer()) -> fun((integer()) -> integer()).
sub(X1) -> fun (X2) -> sub(X1, X2) end.