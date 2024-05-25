-module(basics_19).
-compile([nowarn_export_all, export_all]).

%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%%
%%% This source code is licensed under the Apache 2.0 license found in
%%% the LICENSE file in the root directory of this source tree.

-spec mod_by(integer(), integer()) -> integer().
mod_by(X1, X2) -> X2 div X1.
-spec mod_by(integer()) -> fun((integer()) -> integer()).
mod_by(X1) -> fun (X2) -> mod_by(X1, X2) end.
