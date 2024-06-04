-module(basics_35).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type order() :: {'$#basics:order.lt'} |
                 {'$#basics:order.eq'} |
                 {'$#basics:order.gt'}.
-type never() :: {'$#basics:never.just_one_more',
                  never()}.
-export_type([order/0]).
-export_type([never/0]).
-spec mod_by(integer(), integer()) -> integer().
mod_by(X1, X2) -> X2 div X1.
-spec
     mod_by(integer()) -> fun((integer()) -> integer()).
mod_by(X1) -> fun (X2) -> mod_by(X1, X2) end.
