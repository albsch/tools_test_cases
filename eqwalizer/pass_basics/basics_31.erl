-module(basics_31).
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
-spec 'or'(boolean(), boolean()) -> boolean().
'or'(B1, B2) -> B1 or B2.
-spec 'or'(boolean()) -> fun((boolean()) -> boolean()).
'or'(B1) -> fun (B2) -> 'or'(B1, B2) end.
