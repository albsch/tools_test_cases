-module(result_2).
-compile([nowarn_export_all, export_all]).

%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%%
%%% This source code is licensed under the Apache 2.0 license found in
%%% the LICENSE file in the root directory of this source tree.

-type result(Error, Value) :: {'$#result:result.ok', Value} | {'$#result:result.err', Error}.

-spec map(fun((A) -> B), result(X, A)) -> result(X, B).
map(Func, {'$#result:result.ok', A}) ->
    {'$#result:result.ok', Func(A)};
map(_Func, {'$#result:result.err', E}) ->
    {'$#result:result.err', E}.
-spec map(fun((A) -> B)) -> fun((result(X, A)) -> result(X, B)).
map(Func) -> fun (Res) -> map(Func, Res) end.
