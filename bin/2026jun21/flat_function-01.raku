#!/home/doom/End/Cave/Raku/bin/raku_gh
##   that's a recent build from github: v2026.04-47-g386eb023d

{

  say flat (((1, 3), 7), 9);  # OUTPUT: (1 3 7 9)
  say flat (($(1, 3), 7), 9); # OUTPUT: ((1 3) 7 9)


  say flat :hammer (((1, 3), 7), 9);  # OUTPUT: (1 3 7 9)
  say flat :hammer (($(1, 3), 7), 9); # OUTPUT: ((1 3) 7 9)

}
