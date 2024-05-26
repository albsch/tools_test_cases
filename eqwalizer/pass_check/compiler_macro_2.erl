-module(compiler_macro_2).
-compile([nowarn_export_all, export_all]).

%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%%
%%% This source code is licensed under the Apache 2.0 license found in
%%% the LICENSE file in the root directory of this source tree.

-record(foo, {a, b}).
-spec record_info_fields() -> [a | b].
record_info_fields() -> record_info(fields, foo).
