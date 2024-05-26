-module(strict_complex_types_4).
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

-spec use_complex_map2([complex_map()])
      -> [complex_map()].
use_complex_map2(List) ->
  eqwalizer:reveal_type(List),
  List.
