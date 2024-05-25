-module(basics_16).
-compile([nowarn_export_all, export_all]).

%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%%
%%% This source code is licensed under the Apache 2.0 license found in
%%% the LICENSE file in the root directory of this source tree.

-spec 'and'(boolean(), boolean()) -> boolean().
'and'(B1, B2) -> B1 and B2.
-spec 'and'(boolean()) -> fun((boolean()) -> boolean()).
'and'(B1) -> fun (B2) -> 'and'(B1, B2) end.
