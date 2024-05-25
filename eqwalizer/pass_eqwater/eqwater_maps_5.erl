-module(eqwater_maps_5).
-compile([nowarn_export_all, export_all]).



-type foo() :: #{} | #{required := binary(), optional => binary()}.
-spec add_optional(foo(), binary()) -> foo().
add_optional(Foo = #{required := _R1}, Optional) ->
  Foo#{optional => Optional};
add_optional(Z, _) ->
  Z.
