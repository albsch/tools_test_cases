-module(strict_receive_6).
-compile([nowarn_export_all, export_all]).

%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%%
%%% This source code is licensed under the Apache 2.0 license found in
%%% the LICENSE file in the root directory of this source tree.

-spec sleep2a(timeout()) -> ok.
sleep2a(T) ->
  receive
  after T -> ok
  end.
