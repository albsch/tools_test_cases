-module(strict_fun_1).
-compile([nowarn_export_all, export_all]).

%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%%
%%% This source code is licensed under the Apache 2.0 license found in
%%% the LICENSE file in the root directory of this source tree.
-record(fun_wrap1, {
  inner_fun :: fun()
}).

-record(fun_wrap2, {
  inner_fun :: fun((atom()) -> atom())
}).

-spec mk_fun_wrap1a() -> #fun_wrap1{}.
mk_fun_wrap1a() ->
  #fun_wrap1{inner_fun =
    fun mk_fun_wrap1a/0
  }.
