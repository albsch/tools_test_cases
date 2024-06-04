-module(dynamic_receive_4).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec receive_number_timeout2() -> number().
receive_number_timeout2() ->
    Res = receive
              {number, N} -> N;
              N when is_number(N) -> N
              after 100 -> 0
          end,
    Res.
