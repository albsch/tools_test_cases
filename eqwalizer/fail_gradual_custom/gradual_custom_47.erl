-module(gradual_custom_47).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type version() :: {integer(), integer(), integer()}.
-spec lists_member_4_neg(atom()) -> foo |
                                    bar |
                                    binary().
lists_member_4_neg(Atom) ->
    case lists:member(Atom, [foo, bar, undefined]) of
        true -> Atom;
        _ -> <<>>
    end.
