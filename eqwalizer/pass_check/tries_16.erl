-module(tries_16).
-compile([nowarn_export_all, export_all]).

%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%%
%%% This source code is licensed under the Apache 2.0 license found in
%%% the LICENSE file in the root directory of this source tree.

-spec test05_pos(term()) ->
    {ok | error, atom()}.
test05_pos(X) ->
    A =
        try ok()
        catch
            {error, _} -> error
        after
            if
                is_atom(X) -> ok
            end
        end,
    {A, X}.
