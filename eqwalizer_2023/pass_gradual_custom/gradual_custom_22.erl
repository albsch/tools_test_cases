-module(gradual_custom_22).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec ets_tab2list_2(atom()) -> [{whatev} | {2}].
ets_tab2list_2(Atom) -> ets:tab2list(Atom).