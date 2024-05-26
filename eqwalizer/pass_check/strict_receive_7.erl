-module(strict_receive_7).
-compile([nowarn_export_all, export_all]).

%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%%
%%% This source code is licensed under the Apache 2.0 license found in
%%% the LICENSE file in the root directory of this source tree.

-spec sleep2b(timeout()) -> ok.
sleep2b(T) ->
  Res =
    receive
    after T -> ok
    end,
  Res.
