-module(compiler_macro_1).
-compile([nowarn_export_all, export_all]).

%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%%
%%% This source code is licensed under the Apache 2.0 license found in
%%% the LICENSE file in the root directory of this source tree.

-record(foo, {a, b}).
-spec record_info_size() -> integer().
record_info_size() -> record_info(size, foo).
