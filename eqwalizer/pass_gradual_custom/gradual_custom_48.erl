-module(gradual_custom_48).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type version() :: {integer(), integer(), integer()}.
-spec parse_atom(binary(), [A]) -> A.
parse_atom(Bin, Atoms) ->
    Atom = binary_to_existing_atom(Bin),
    case lists:member(Atom, Atoms) of
        true -> Atom;
        false -> error(bad_atom)
    end.
