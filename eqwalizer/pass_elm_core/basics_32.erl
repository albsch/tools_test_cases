-module(basics_32).
-compile([nowarn_export_all, export_all]).

%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%%
%%% This source code is licensed under the Apache 2.0 license found in
%%% the LICENSE file in the root directory of this source tree.

-spec always(A, _) -> A.
always(A, _) -> A.

-spec always(A) -> fun((_) -> A).
always(A) -> fun (X) -> always(A, X) end.
