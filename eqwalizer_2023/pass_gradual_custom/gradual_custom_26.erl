-module(gradual_custom_26).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec maps_without_3_neg(none()) -> wrong_ret.
maps_without_3_neg(None) -> maps:without([a, b], None).
