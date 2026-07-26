#!/home/doom/End/Cave/Raku/bin/raku_gh

私の $数 = プロンプト "数を教えてください ";
言う "数は{$数}です。";

もしも $数 <= 10 {
    言う "数は10以下です";
} その他 {
    言う "数は10以上です";
}

# ===SORRY!=== Error while compiling /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2026jul26/ja_example_front_page.raku
# Variable '$数' is not declared. Perhaps you forgot a 'sub' if this was
# intended to be part of a signature?
# at /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2026jul26/ja_example_front_page.raku:3
# ------> 私の ⏏$数 = プロンプト "数を教えてください ";
