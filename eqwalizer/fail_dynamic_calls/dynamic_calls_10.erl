-module(dynamic_calls_10).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-record(rec, {method :: fun((atom()) -> pid())}).
-spec test_10_neg() -> ok.
ret_ok() -> ok.
-spec ret_ok() -> ok.
test_10_neg() -> fun ret_ok/0(1, 2).
