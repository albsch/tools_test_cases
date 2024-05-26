-module(t_maps_59).
-compile([nowarn_export_all, export_all]).

-type b() :: boolean().
-type n() :: number().
-type a() :: atom().
-type foo_bar(F, B) :: #{foo := F, bar := B}.
-type foo_bar_opt(F, B) :: #{foo => F, bar => B}.
-type kv(K, V) :: #{K => V}.
-type rec_shape() :: #{ item := rec_shape() | undefined }.
-type rec_shape_v2() :: #{ item_v2 := rec_shape_v2() | undefined }.
-type gen_shape(T) :: #{ item := T | gen_shape(T) }.
-type gen_shape_v2(T) :: #{ item_v2 := T | gen_shape_v2(T) }.
-type gen_shape_expanded(T) :: #{ item := T | #{ item := T | gen_shape_expanded(T) } }.

-spec needs_shape_ab
    (#{a := term(), b := term()}) -> ok.
needs_shape_ab(_) -> ok.
-spec needs_shape_a
    (#{a := term()}) -> ok.
needs_shape_a(_) -> ok.
-spec shape_ab(#{a := term()}) -> ok.
shape_ab(X) ->
    needs_shape_a(X),
    needs_shape_ab(X#{b => hello}).
