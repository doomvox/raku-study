#!/home/doom/End/Cave/Raku/bin/raku_gh
##   that's a recent build from github: v2026.04-47-g386eb023d

{

  say flat (((1, 3), 7), 9);  # OUTPUT: (1 3 7 9)
  say flat (($(1, 3), 7), 9); # OUTPUT: ((1 3) 7 9)


  say flat( (((1, 3), 7), 9), :hammer );  # OUTPUT: (1 3 7 9)
  say flat( (($(1, 3), 7), 9), :hammer); # OUTPUT: ((1 3) 7 9)

# Cannot resolve caller flat(List:D, :hammer); none of these signatures matches:
#     (**@list is raw)
#     (Iterable \a)
#   in block <unit> at /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2026jun21/flat_function-01.raku line 10

}
