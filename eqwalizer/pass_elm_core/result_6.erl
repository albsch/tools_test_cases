-module(result_6).
-compile([nowarn_export_all, export_all]).

%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%%
%%% This source code is licensed under the Apache 2.0 license found in
%%% the LICENSE file in the root directory of this source tree.

-type result(Error, Value) :: {'$#result:result.ok', Value} | {'$#result:result.err', Error}.

-spec is_ok(result(_, _)) -> boolean().
is_ok({'$#result:result.ok', _}) -> true;
is_ok({'$#result:result.err', _}) -> false.
