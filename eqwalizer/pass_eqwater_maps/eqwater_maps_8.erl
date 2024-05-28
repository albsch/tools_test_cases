-module(eqwater_maps_8).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type foo() :: #{} |
               #{required := binary(), optional => binary()}.
-spec add_optional(foo(), binary()) -> foo().
add_optional(Foo = #{required := _R1}, Optional) ->
    Foo#{optional => Optional};
add_optional(Z, _) -> Z.
