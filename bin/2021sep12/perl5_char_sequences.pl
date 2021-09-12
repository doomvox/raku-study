#!/usr/bin/env perl
#                                      2021/09/12 14:17:40

=head1 NAME

perl5_char_sequences.pl

=head1 SYNOPSIS


=head1 DESCRIPTION

Stub documentation for perl5_char_sequences.pl,
created by template.el.

It looks like the author of this script was negligent
enough to leave the stub unedited.

=cut

use 5.10.0;
use warnings;
use strict;
$|=1;
use Data::Dumper;

my @stuff = 'aa' .. 'dd';
# Raku
# say @stuff;   #  [aa ab ac ad ba bb bc bd ca cb cc cd da db dc dd]
say join ' ', @stuff;
# aa ab ac ad ae af ag ah ai aj ak al am an ao ap aq ar as at au av aw ax ay az ba bb bc bd be bf bg bh bi bj bk bl bm bn bo bp bq br bs bt bu bv bw bx by bz ca cb cc cd ce cf cg ch ci cj ck cl cm cn co cp cq cr cs ct cu cv cw cx cy cz da db dc dd

@stuff = 'a' .. 'ccc';
# Raku
# say @stuff;   # [a b c]
say join ' ', @stuff;   # [a b c]

# a b c d e f g h i j k l m n o p q r s t u v w x y z aa ab ac ad ae af ag ah ai aj ak al am an ao ap aq ar as at au av aw ax ay az ba bb bc bd be bf bg bh bi bj bk bl bm bn bo bp bq br bs bt bu bv bw bx by bz ca cb cc cd ce cf cg ch ci cj ck cl cm cn co cp cq cr cs ct cu cv cw cx cy cz da db dc dd de df dg dh di dj dk dl dm dn do dp dq dr ds dt du dv dw dx dy dz ea eb ec ed ee ef eg eh ei ej ek el em en eo ep eq er es et eu ev ew ex ey ez fa fb fc fd fe ff fg fh fi fj fk fl fm fn fo fp fq fr fs ft fu fv fw fx fy fz ga gb gc gd ge gf gg gh gi gj gk gl gm gn go gp gq gr gs gt gu gv gw gx gy gz ha hb hc hd he hf hg hh hi hj hk hl hm hn ho hp hq hr hs ht hu hv hw hx hy hz ia ib ic id ie if ig ih ii ij ik il im in io ip iq ir is it iu iv iw ix iy iz ja jb jc jd je jf jg jh ji jj jk jl jm jn jo jp jq jr js jt ju jv jw jx jy jz ka kb kc kd ke kf kg kh ki kj kk kl km kn ko kp kq kr ks kt ku kv kw kx ky kz la lb lc ld le lf lg lh li lj lk ll lm ln lo lp lq lr ls lt lu lv lw lx ly lz ma mb mc md me mf mg mh mi mj mk ml mm mn mo mp mq mr ms mt mu mv mw mx my mz na nb nc nd ne nf ng nh ni nj nk nl nm nn no np nq nr ns nt nu nv nw nx ny nz oa ob oc od oe of og oh oi oj ok ol om on oo op oq or os ot ou ov ow ox oy oz pa pb pc pd pe pf pg ph pi pj pk pl pm pn po pp pq pr ps pt pu pv pw px py pz qa qb qc qd qe qf qg qh qi qj qk ql qm qn qo qp qq qr qs qt qu qv qw qx qy qz ra rb rc rd re rf rg rh ri rj rk rl rm rn ro rp rq rr rs rt ru rv rw rx ry rz sa sb sc sd se sf sg sh si sj sk sl sm sn so sp sq sr ss st su sv sw sx sy sz ta tb tc td te tf tg th ti tj tk tl tm tn to tp tq tr ts tt tu tv tw tx ty tz ua ub uc ud ue uf ug uh ui uj uk ul um un uo up uq ur us ut uu uv uw ux uy uz va vb vc vd ve vf vg vh vi vj vk vl vm vn vo vp vq vr vs vt vu vv vw vx vy vz wa wb wc wd we wf wg wh wi wj wk wl wm wn wo wp wq wr ws wt wu wv ww wx wy wz xa xb xc xd xe xf xg xh xi xj xk xl xm xn xo xp xq xr xs xt xu xv xw xx xy xz ya yb yc yd ye yf yg yh yi yj yk yl ym yn yo yp yq yr ys yt yu yv yw yx yy yz za zb zc zd ze zf zg zh zi zj zk zl zm zn zo zp zq zr zs zt zu zv zw zx zy zz aaa aab aac aad aae aaf aag aah aai aaj aak aal aam aan aao aap aaq aar aas aat aau aav aaw aax aay aaz aba abb abc abd abe abf abg abh abi abj abk abl abm abn abo abp abq abr abs abt abu abv abw abx aby abz aca acb acc acd ace acf acg ach aci acj ack acl acm acn aco acp acq acr acs act acu acv acw acx acy acz ada adb adc add ade adf adg adh adi adj adk adl adm adn ado adp adq adr ads adt adu adv adw adx ady adz aea aeb aec aed aee aef aeg aeh aei aej aek ael aem aen aeo aep aeq aer aes aet aeu aev aew aex aey aez afa afb afc afd afe aff afg afh afi afj afk afl afm afn afo afp afq afr afs aft afu afv afw afx afy afz aga agb agc agd age agf agg agh agi agj agk agl agm agn ago agp agq agr ags agt agu agv agw agx agy agz aha ahb ahc ahd ahe ahf ahg ahh ahi ahj ahk ahl ahm ahn aho ahp ahq ahr ahs aht ahu ahv ahw ahx ahy ahz aia aib aic aid aie aif aig aih aii aij aik ail aim ain aio aip aiq air ais ait aiu aiv aiw aix aiy aiz aja ajb ajc ajd aje ajf ajg ajh aji ajj ajk ajl ajm ajn ajo ajp ajq ajr ajs ajt aju ajv ajw ajx ajy ajz aka akb akc akd ake akf akg akh aki akj akk akl akm akn ako akp akq akr aks akt aku akv akw akx aky akz ala alb alc ald ale alf alg alh ali alj alk all alm aln alo alp alq alr als alt alu alv alw alx aly alz ama amb amc amd ame amf amg amh ami amj amk aml amm amn amo amp amq amr ams amt amu amv amw amx amy amz ana anb anc and ane anf ang anh ani anj ank anl anm ann ano anp anq anr ans ant anu anv anw anx any anz aoa aob aoc aod aoe aof aog aoh aoi aoj aok aol aom aon aoo aop aoq aor aos aot aou aov aow aox aoy aoz apa apb apc apd ape apf apg aph api apj apk apl apm apn apo app apq apr aps apt apu apv apw apx apy apz aqa aqb aqc aqd aqe aqf aqg aqh aqi aqj aqk aql aqm aqn aqo aqp aqq aqr aqs aqt aqu aqv aqw aqx aqy aqz ara arb arc ard are arf arg arh ari arj ark arl arm arn aro arp arq arr ars art aru arv arw arx ary arz asa asb asc asd ase asf asg ash asi asj ask asl asm asn aso asp asq asr ass ast asu asv asw asx asy asz ata atb atc atd ate atf atg ath ati atj atk atl atm atn ato atp atq atr ats att atu atv atw atx aty atz aua aub auc aud aue auf aug auh aui auj auk aul aum aun auo aup auq aur aus aut auu auv auw aux auy auz ava avb avc avd ave avf avg avh avi avj avk avl avm avn avo avp avq avr avs avt avu avv avw avx avy avz awa awb awc awd awe awf awg awh awi awj awk awl awm awn awo awp awq awr aws awt awu awv aww awx awy awz axa axb axc axd axe axf axg axh axi axj axk axl axm axn axo axp axq axr axs axt axu axv axw axx axy axz aya ayb ayc ayd aye ayf ayg ayh ayi ayj ayk ayl aym ayn ayo ayp ayq ayr ays ayt ayu ayv ayw ayx ayy ayz aza azb azc azd aze azf azg azh azi azj azk azl azm azn azo azp azq azr azs azt azu azv azw azx azy azz baa bab bac bad bae baf bag bah bai baj bak bal bam ban bao bap baq bar bas bat bau bav baw bax bay baz bba bbb bbc bbd bbe bbf bbg bbh bbi bbj bbk bbl bbm bbn bbo bbp bbq bbr bbs bbt bbu bbv bbw bbx bby bbz bca bcb bcc bcd bce bcf bcg bch bci bcj bck bcl bcm bcn bco bcp bcq bcr bcs bct bcu bcv bcw bcx bcy bcz bda bdb bdc bdd bde bdf bdg bdh bdi bdj bdk bdl bdm bdn bdo bdp bdq bdr bds bdt bdu bdv bdw bdx bdy bdz bea beb bec bed bee bef beg beh bei bej bek bel bem ben beo bep beq ber bes bet beu bev bew bex bey bez bfa bfb bfc bfd bfe bff bfg bfh bfi bfj bfk bfl bfm bfn bfo bfp bfq bfr bfs bft bfu bfv bfw bfx bfy bfz bga bgb bgc bgd bge bgf bgg bgh bgi bgj bgk bgl bgm bgn bgo bgp bgq bgr bgs bgt bgu bgv bgw bgx bgy bgz bha bhb bhc bhd bhe bhf bhg bhh bhi bhj bhk bhl bhm bhn bho bhp bhq bhr bhs bht bhu bhv bhw bhx bhy bhz bia bib bic bid bie bif big bih bii bij bik bil bim bin bio bip biq bir bis bit biu biv biw bix biy biz bja bjb bjc bjd bje bjf bjg bjh bji bjj bjk bjl bjm bjn bjo bjp bjq bjr bjs bjt bju bjv bjw bjx bjy bjz bka bkb bkc bkd bke bkf bkg bkh bki bkj bkk bkl bkm bkn bko bkp bkq bkr bks bkt bku bkv bkw bkx bky bkz bla blb blc bld ble blf blg blh bli blj blk bll blm bln blo blp blq blr bls blt blu blv blw blx bly blz bma bmb bmc bmd bme bmf bmg bmh bmi bmj bmk bml bmm bmn bmo bmp bmq bmr bms bmt bmu bmv bmw bmx bmy bmz bna bnb bnc bnd bne bnf bng bnh bni bnj bnk bnl bnm bnn bno bnp bnq bnr bns bnt bnu bnv bnw bnx bny bnz boa bob boc bod boe bof bog boh boi boj bok bol bom bon boo bop boq bor bos bot bou bov bow box boy boz bpa bpb bpc bpd bpe bpf bpg bph bpi bpj bpk bpl bpm bpn bpo bpp bpq bpr bps bpt bpu bpv bpw bpx bpy bpz bqa bqb bqc bqd bqe bqf bqg bqh bqi bqj bqk bql bqm bqn bqo bqp bqq bqr bqs bqt bqu bqv bqw bqx bqy bqz bra brb brc brd bre brf brg brh bri brj brk brl brm brn bro brp brq brr brs brt bru brv brw brx bry brz bsa bsb bsc bsd bse bsf bsg bsh bsi bsj bsk bsl bsm bsn bso bsp bsq bsr bss bst bsu bsv bsw bsx bsy bsz bta btb btc btd bte btf btg bth bti btj btk btl btm btn bto btp btq btr bts btt btu btv btw btx bty btz bua bub buc bud bue buf bug buh bui buj buk bul bum bun buo bup buq bur bus but buu buv buw bux buy buz bva bvb bvc bvd bve bvf bvg bvh bvi bvj bvk bvl bvm bvn bvo bvp bvq bvr bvs bvt bvu bvv bvw bvx bvy bvz bwa bwb bwc bwd bwe bwf bwg bwh bwi bwj bwk bwl bwm bwn bwo bwp bwq bwr bws bwt bwu bwv bww bwx bwy bwz bxa bxb bxc bxd bxe bxf bxg bxh bxi bxj bxk bxl bxm bxn bxo bxp bxq bxr bxs bxt bxu bxv bxw bxx bxy bxz bya byb byc byd bye byf byg byh byi byj byk byl bym byn byo byp byq byr bys byt byu byv byw byx byy byz bza bzb bzc bzd bze bzf bzg bzh bzi bzj bzk bzl bzm bzn bzo bzp bzq bzr bzs bzt bzu bzv bzw bzx bzy bzz caa cab cac cad cae caf cag cah cai caj cak cal cam can cao cap caq car cas cat cau cav caw cax cay caz cba cbb cbc cbd cbe cbf cbg cbh cbi cbj cbk cbl cbm cbn cbo cbp cbq cbr cbs cbt cbu cbv cbw cbx cby cbz cca ccb ccc




@stuff = 'a' ... 'ccc';
# Raku
# say @stuff.elems;  # 3
# a b c aa ab bb bc cc aaa  aab  abbb ccc 

say join ' ', @stuff;




__END__

=head1 AUTHOR

Joseph Brenner, E<lt>doom@fandango.obsidianrook.comE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2021 by Joseph Brenner

This program is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.10.0 or,
at your option, any later version of Perl 5 you may have available.

=cut
