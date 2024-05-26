-module(strict_receive_5).
-compile([nowarn_export_all, export_all]).

%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%%
%%% This source code is licensed under the Apache 2.0 license found in
%%% the LICENSE file in the root directory of this source tree.

-spec sleep1(pos_integer()) -> ok.
sleep1(T) ->
  receive
  after T -> ok
  end.
