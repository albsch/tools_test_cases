-module(booleans_15).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type trill() :: true.
-spec only_true() -> true.
dyn() -> false.
-spec dyn() -> eqwalizer:dynamic().
only_true() -> true.
-spec andalso11() -> true.
andalso11() -> only_true() andalso dyn().
