-module(tries_10).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec ok() -> ok.
ok() -> ok.
-spec test07_neg() -> error.
test07_neg() -> try ok() catch _ -> error end.
