class BrandsController < ApplicationController

  def wemens
    @initial = [
"ア", "イ", "ウ", "エ", "オ", "カ", "ガ", "キ", "ギ", "ク", "グ", "ケ", "ゲ", "コ","ゴ", "サ", "ザ", "シ", "ジ", "ス", "ズ", "セ", "ゼ", "ソ", "ゾ", "タ", "ダ", "チ", "ツ", "ヅ", "テ", "デ", "ト", "ド", "ナ", "ニ", "ヌ", "ネ", "ノ", "ハ", "バ", "パ", "ヒ", "ビ", "ピ", "フ", "ブ", "プ", "ヘ", "ベ", "ペ", "ホ", "ボ", "ポ", "マ", "ミ", "ム", "メ", "モ", "ヤ", "ユ", "ヨ", "ラ", "リ", "ル", "レ", "ロ", "ワ", "ヴ", "1", "2", "3" ,"4" ,"5" ,"6" ,"8"]

    gon.initial = [
"ア", "イ", "ウ", "エ", "オ", "カ", "ガ", "キ", "ギ", "ク", "グ", "ケ", "ゲ", "コ","ゴ", "サ", "ザ", "シ", "ジ", "ス", "ズ", "セ", "ゼ", "ソ", "ゾ", "タ", "ダ", "チ", "ツ", "ヅ", "テ", "デ", "ト", "ド", "ナ", "ニ", "ヌ", "ネ", "ノ", "ハ", "バ", "パ", "ヒ", "ビ", "ピ", "フ", "ブ", "プ", "ヘ", "ベ", "ペ", "ホ", "ボ", "ポ", "マ", "ミ", "ム", "メ", "モ", "ヤ", "ユ", "ヨ", "ラ", "リ", "ル", "レ", "ロ", "ワ", "ヴ", "1", "2", "3" ,"4" ,"5" ,"6" ,"8"]

    @brands_a = WomanBrand.where('name LIKE(?)', "ア%")
    @brands_i = WomanBrand.where('name LIKE(?)', "イ%")
    @brands_u = WomanBrand.where('name LIKE(?)', "ウ%")
    @brands_e = WomanBrand.where('name LIKE(?)', "エ%")
    @brands_o = WomanBrand.where('name LIKE(?)', "オ%")
    @brands_ka = WomanBrand.where('name LIKE(?)', "カ%")
    @brands_ga = WomanBrand.where('name LIKE(?)', "ガ%")
    @brands_ki = WomanBrand.where('name LIKE(?)', "キ%")
    @brands_gi = WomanBrand.where('name LIKE(?)', "ギ%")
    @brands_ku = WomanBrand.where('name LIKE(?)', "ク%")
    @brands_gu = WomanBrand.where('name LIKE(?)', "グ%")
    @brands_ke = WomanBrand.where('name LIKE(?)', "ケ%")
    @brands_ge = WomanBrand.where('name LIKE(?)', "ゲ%")
    @brands_ko = WomanBrand.where('name LIKE(?)', "コ%")
    @brands_go = WomanBrand.where('name LIKE(?)', "ゴ%")
    @brands_sa = WomanBrand.where('name LIKE(?)', "サ%")
    @brands_za = WomanBrand.where('name LIKE(?)', "ザ%")
    @brands_si = WomanBrand.where('name LIKE(?)', "シ%")
    @brands_ji = WomanBrand.where('name LIKE(?)', "ジ%")
    @brands_su = WomanBrand.where('name LIKE(?)', "ス%")
    @brands_zu = WomanBrand.where('name LIKE(?)', "ズ%")
    @brands_se = WomanBrand.where('name LIKE(?)', "セ%")
    @brands_ze = WomanBrand.where('name LIKE(?)', "ゼ%")
    @brands_so = WomanBrand.where('name LIKE(?)', "ソ%")
    @brands_zo = WomanBrand.where('name LIKE(?)', "ゾ%")
    @brands_ta = WomanBrand.where('name LIKE(?)', "タ%")
    @brands_da = WomanBrand.where('name LIKE(?)', "ダ%")
    @brands_ti = WomanBrand.where('name LIKE(?)', "チ%")
    @brands_tu = WomanBrand.where('name LIKE(?)', "ツ%")
    @brands_du = WomanBrand.where('name LIKE(?)', "ヅ%")
    @brands_te = WomanBrand.where('name LIKE(?)', "テ%")
    @brands_de = WomanBrand.where('name LIKE(?)', "デ%")
    @brands_to = WomanBrand.where('name LIKE(?)', "ト%")
    @brands_dou = WomanBrand.where('name LIKE(?)', "ド%")
    @brands_na = WomanBrand.where('name LIKE(?)', "ナ%")
    @brands_ni = WomanBrand.where('name LIKE(?)', "ニ%")
    @brands_nu = WomanBrand.where('name LIKE(?)', "ヌ%")
    @brands_ne = WomanBrand.where('name LIKE(?)', "ネ%")
    @brands_no = WomanBrand.where('name LIKE(?)', "ノ%")
    @brands_ha = WomanBrand.where('name LIKE(?)', "ハ%")
    @brands_ba = WomanBrand.where('name LIKE(?)', "バ%")
    @brands_pa = WomanBrand.where('name LIKE(?)', "パ%")
    @brands_hi = WomanBrand.where('name LIKE(?)', "ヒ%")
    @brands_bi = WomanBrand.where('name LIKE(?)', "ビ%")
    @brands_pi = WomanBrand.where('name LIKE(?)', "ピ%")
    @brands_hu = WomanBrand.where('name LIKE(?)', "フ%")
    @brands_bu = WomanBrand.where('name LIKE(?)', "ブ%")
    @brands_pu = WomanBrand.where('name LIKE(?)', "プ%")
    @brands_he = WomanBrand.where('name LIKE(?)', "ヘ%")
    @brands_be = WomanBrand.where('name LIKE(?)', "ベ%")
    @brands_pe = WomanBrand.where('name LIKE(?)', "ペ%")
    @brands_ho = WomanBrand.where('name LIKE(?)', "ホ%")
    @brands_bo = WomanBrand.where('name LIKE(?)', "ボ%")
    @brands_po = WomanBrand.where('name LIKE(?)', "ポ%")
    @brands_ma = WomanBrand.where('name LIKE(?)', "マ%")
    @brands_mi = WomanBrand.where('name LIKE(?)', "ミ%")
    @brands_mu = WomanBrand.where('name LIKE(?)', "ム%")
    @brands_me = WomanBrand.where('name LIKE(?)', "メ%")
    @brands_mo = WomanBrand.where('name LIKE(?)', "モ%")
    @brands_ya = WomanBrand.where('name LIKE(?)', "ヤ%")
    @brands_yu = WomanBrand.where('name LIKE(?)', "ユ%")
    @brands_yo = WomanBrand.where('name LIKE(?)', "ヨ%")
    @brands_ra = WomanBrand.where('name LIKE(?)', "ラ%")
    @brands_ri = WomanBrand.where('name LIKE(?)', "リ%")
    @brands_ru = WomanBrand.where('name LIKE(?)', "ル%")
    @brands_re = WomanBrand.where('name LIKE(?)', "レ%")
    @brands_ro = WomanBrand.where('name LIKE(?)', "ロ%")
    @brands_wa = WomanBrand.where('name LIKE(?)', "ワ%")
    @brands_vu = WomanBrand.where('name LIKE(?)', "ヴ%")
    @brands_1 = WomanBrand.where('name LIKE(?)', "1%")
    @brands_2 = WomanBrand.where('name LIKE(?)', "2%")
    @brands_3 = WomanBrand.where('name LIKE(?)', "3%")
    @brands_4 = WomanBrand.where('name LIKE(?)', "4%")
    @brands_5 = WomanBrand.where('name LIKE(?)', "5%")
    @brands_6 = WomanBrand.where('name LIKE(?)', "6%")
    @brands_8 = WomanBrand.where('name LIKE(?)', "8%")



  end

  def kids

    @initial = [
"ア", "イ", "ウ", "エ", "オ", "カ", "キ", "ク", "ケ", "コ", "サ", "シ", "ジ", "ス", "セ", "ソ", "タ", "チ", "ツ", "テ", "デ", "ト", "ナ", "ニ", "ヌ", "ネ", "ノ", "ハ", "バ", "ヒ", "ビ",  "フ", "ヘ", "ホ", "ボ", "マ", "ミ", "ム", "メ", "モ", "ヤ", "ユ", "ヨ", "ラ", "リ", "ル", "レ", "ロ", "ワ","3"]

    gon.initial = [
"ア", "イ", "ウ", "エ", "オ", "カ", "キ", "ク", "ケ", "コ", "サ", "シ", "ジ", "ス", "セ", "ソ", "タ", "チ", "ツ", "テ", "デ", "ト", "ナ", "ニ", "ヌ", "ネ", "ノ", "ハ", "バ", "ヒ", "ビ",  "フ", "ヘ", "ホ", "ボ", "マ", "ミ", "ム", "メ", "モ", "ヤ", "ユ", "ヨ", "ラ", "リ", "ル", "レ", "ロ", "ワ","3"]
    @brands_a = KidsBrand.where('name LIKE(?)', "ア%")
    @brands_i = KidsBrand.where('name LIKE(?)', "イ%")
    @brands_u = KidsBrand.where('name LIKE(?)', "ウ%")
    @brands_e = KidsBrand.where('name LIKE(?)', "エ%")
    @brands_o = KidsBrand.where('name LIKE(?)', "オ%")
    @brands_ka = KidsBrand.where('name LIKE(?)', "カ%")
    @brands_ki = KidsBrand.where('name LIKE(?)', "キ%")
    @brands_ku = KidsBrand.where('name LIKE(?)', "ク%")
    @brands_gu = KidsBrand.where('name LIKE(?)', "グ%")
    @brands_ke = KidsBrand.where('name LIKE(?)', "ケ%")
    @brands_ko = KidsBrand.where('name LIKE(?)', "コ%")
    @brands_sa = KidsBrand.where('name LIKE(?)', "サ%")
    @brands_si = KidsBrand.where('name LIKE(?)', "シ%")
    @brands_ji = KidsBrand.where('name LIKE(?)', "ジ%")
    @brands_su = KidsBrand.where('name LIKE(?)', "ス%")
    @brands_se = KidsBrand.where('name LIKE(?)', "セ%")
    @brands_so = KidsBrand.where('name LIKE(?)', "ソ%")
    @brands_ta = KidsBrand.where('name LIKE(?)', "タ%")
    @brands_ti = KidsBrand.where('name LIKE(?)', "チ%")
    @brands_tu = KidsBrand.where('name LIKE(?)', "ツ%")
    @brands_te = KidsBrand.where('name LIKE(?)', "テ%")
    @brands_de = KidsBrand.where('name LIKE(?)', "デ%")
    @brands_to = KidsBrand.where('name LIKE(?)', "ト%")
    @brands_na = KidsBrand.where('name LIKE(?)', "ナ%")
    @brands_ni = KidsBrand.where('name LIKE(?)', "ニ%")
    @brands_nu = KidsBrand.where('name LIKE(?)', "ヌ%")
    @brands_ne = KidsBrand.where('name LIKE(?)', "ネ%")
    @brands_no = KidsBrand.where('name LIKE(?)', "ノ%")
    @brands_ha = KidsBrand.where('name LIKE(?)', "ハ%")
    @brands_pa = KidsBrand.where('name LIKE(?)', "パ%")
    @brands_hi = KidsBrand.where('name LIKE(?)', "ヒ%")
    @brands_bi = KidsBrand.where('name LIKE(?)', "ビ%")
    @brands_hu = KidsBrand.where('name LIKE(?)', "フ%")
    @brands_he = KidsBrand.where('name LIKE(?)', "ヘ%")
    @brands_be = KidsBrand.where('name LIKE(?)', "ベ%")
    @brands_ho = KidsBrand.where('name LIKE(?)', "ホ%")
    @brands_bo = KidsBrand.where('name LIKE(?)', "ボ%")
    @brands_ma = KidsBrand.where('name LIKE(?)', "マ%")
    @brands_mi = KidsBrand.where('name LIKE(?)', "ミ%")
    @brands_mu = KidsBrand.where('name LIKE(?)', "ム%")
    @brands_me = KidsBrand.where('name LIKE(?)', "メ%")
    @brands_mo = KidsBrand.where('name LIKE(?)', "モ%")
    @brands_ya = KidsBrand.where('name LIKE(?)', "ヤ%")
    @brands_yu = KidsBrand.where('name LIKE(?)', "ユ%")
    @brands_yo = KidsBrand.where('name LIKE(?)', "ヨ%")
    @brands_ra = KidsBrand.where('name LIKE(?)', "ラ%")
    @brands_ri = KidsBrand.where('name LIKE(?)', "リ%")
    @brands_ru = KidsBrand.where('name LIKE(?)', "ル%")
    @brands_re = KidsBrand.where('name LIKE(?)', "レ%")
    @brands_ro = KidsBrand.where('name LIKE(?)', "ロ%")
    @brands_wa = KidsBrand.where('name LIKE(?)', "ワ%")
    @brands_3 = KidsBrand.where('name LIKE(?)', "3%")
  end

  def hobby

    @initial = ["ウ", "エ", "コ", "サ",  "ス", "セ", "ニ", "ネ", "フ", "ヘ", "マ", "レ"]
    gon.initial = ["ウ", "エ", "コ", "サ",  "ス", "セ", "ニ", "ネ", "フ", "ヘ", "マ", "レ"]

    @brands_u = HobbyBrand.where('name LIKE(?)', "ウ%")
    @brands_e = HobbyBrand.where('name LIKE(?)', "エ%")
    @brands_ke = HobbyBrand.where('name LIKE(?)', "ケ%")
    @brands_ko = HobbyBrand.where('name LIKE(?)', "コ%")
    @brands_sa = HobbyBrand.where('name LIKE(?)', "サ%")
    @brands_su = HobbyBrand.where('name LIKE(?)', "ス%")
    @brands_se = HobbyBrand.where('name LIKE(?)', "セ%")
    @brands_ni = HobbyBrand.where('name LIKE(?)', "ニ%")
    @brands_ne = HobbyBrand.where('name LIKE(?)', "ネ%")
    @brands_hu = HobbyBrand.where('name LIKE(?)', "フ%")
    @brands_he = HobbyBrand.where('name LIKE(?)', "ヘ%")
    @brands_ma = HobbyBrand.where('name LIKE(?)', "マ%")
    @brands_re = HobbyBrand.where('name LIKE(?)', "レ%")

  end

end
