-module(strict_complex_types_3).
-compile([nowarn_export_all, export_all]).

%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%%
%%% This source code is licensed under the Apache 2.0 license found in
%%% the LICENSE file in the root directory of this source tree.
-type complex_map() :: #{
  id := integer(),
  {secret, id} => integer(),
  atom() => term()
}.

-spec use_complex_map1(complex_map())
      -> complex_map().
use_complex_map1(Map) ->
  eqwalizer:reveal_type(Map),
  Map.
