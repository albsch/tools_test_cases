-module(otp_opaques_5).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec uniques1([A]) -> [A].
uniques1(Elems) ->
    Set = gb_sets:from_list(Elems),
    List = gb_sets:to_list(Set),
    List.
