-module(strict_receive_3).
-compile([nowarn_export_all, export_all]).

%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%%
%%% This source code is licensed under the Apache 2.0 license found in
%%% the LICENSE file in the root directory of this source tree.

-spec receive_number_timeout1()
      -> number().
receive_number_timeout1() ->
  receive
    {number, N} -> N;
    N when is_number(N) -> N
  after 100 ->
    0
  end.
