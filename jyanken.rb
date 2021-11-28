puts "じゃんけん．．．"

def janken

  puts "1(グー) 2(チョキ) 3(パー) 4(戦わない)"

  #あなた：じゃんけん
  jyanken_kinds = gets.to_i
  #相手：じゃんけん
  jyanken_kinds_partner = rand(1..3)

  #相手1(グー)
  if jyanken_kinds_partner == 1 then
    partner = "相手：グーを出しました"
    goo_partner = jyanken_kinds_partner
  
  #相手2(チョキ)
  elsif jyanken_kinds_partner == 2 then
    partner = "相手：チョキを出しました"
    cyoki_partner = jyanken_kinds_partner
  
  #相手3(パー)
  elsif jyanken_kinds_partner == 3 then
    partner = "相手：パーを出しました"
    paa_partner = jyanken_kinds_partner
  end

  #あなた1(グー)
  if jyanken_kinds == 1 then
    puts "ホイ！"
    puts "-------------------"
    puts "あなた：グーを出しました"
    puts "#{partner}"
    puts "-------------------"
    goo_myself = jyanken_kinds
  
  #あなた2(チョキ)
  elsif jyanken_kinds == 2 then
    puts "ホイ！"
    puts "-------------------"
    puts "あなた：チョキを出しました"
    puts "#{partner}"
    puts "-------------------"
    cyoki_myself = jyanken_kinds
  
  #あなた3(パー)
  elsif jyanken_kinds == 3 then
    puts "ホイ！"
    puts "-------------------"
    puts "あなた：パーを出しました"
    puts "#{partner}"
    puts "-------------------"
    paa_myself = jyanken_kinds
  
  else
    return false
  end

  #じゃんけん勝負結果
  case_pattern = ""
  
  if jyanken_kinds == jyanken_kinds_partner then
    puts "あいこで．．．"
    return true
  
  elsif goo_myself && cyoki_partner then
    case_pattern = "あなたの勝ち"
    puts "あなたの勝ち(じゃんけん)"
    puts "-------------------"
  
  elsif goo_myself && paa_partner then
    case_pattern = "相手の勝ち"
    puts "相手の勝ち(じゃんけん)"
    puts "-------------------"
  
  elsif cyoki_myself && goo_partner then
    case_pattern = "相手の勝ち"
    puts "相手の勝ち(じゃんけん)"
    puts "-------------------"
  
  elsif cyoki_myself && paa_partner then
    case_pattern = "あなたの勝ち"
    puts "あなたの勝ち(じゃんけん)"
    puts "-------------------"
  
  elsif paa_myself && goo_partner then
    case_pattern = "あなたの勝ち"
    puts "あなたの勝ち(じゃんけん)"
    puts "-------------------"
  
  elsif paa_myself && cyoki_partner then
    case_pattern = "相手の勝ち"
    puts "相手の勝ち(じゃんけん)"
    puts "-------------------"
  end
  
  case case_pattern
  
  when "あなたの勝ち"
    puts "あなた：指"
    puts "相手：顔"
    puts "-------------------"
  
  when "相手の勝ち"
    puts "あなた：顔"
    puts "相手：指"
    puts "-------------------"
  end
  
  #あっち向いて
  puts "あっち向いて〜"
  puts "1(上) 2(下) 3(左) 4(右) 5(戦わない)"

  #あなた：あっち向いて
  achimuite_kinds = gets.to_i
  #相手：あっち向いて
  achimuite_kinds_partner = rand(1..4)
  
  #相手1(上)
  if achimuite_kinds_partner == 1 then
    partner_achimuite = "相手：上"
    up_partner = achimuite_kinds_partner
  
  #相手2(下)
  elsif achimuite_kinds_partner == 2 then
    partner_achimuite = "相手：下"
    under_partner = achimuite_kinds_partner
  
  #相手3(左)
  elsif achimuite_kinds_partner == 3 then
    partner_achimuite = "相手：左"
    left_partner = achimuite_kinds_partner
  
  #相手4(右)
  elsif achimuite_kinds_partner == 4 then
    partner_achimuite = "相手：右"
    right_partner = achimuite_kinds_partner
  end
  
  #あなた1(上)
  if achimuite_kinds == 1 then
    puts "ホイ！"
    puts "-------------------"
    puts "あなた：上"
    puts "#{partner_achimuite}"
    up_myself = achimuite_kinds
  
  #あなた2(下)
  elsif achimuite_kinds == 2 then
    puts "ホイ！"
    puts "-------------------"
    puts "あなた：下"
    puts "#{partner_achimuite}"
    under_myself = achimuite_kinds
  
  #あなた3(左)
  elsif achimuite_kinds == 3 then
    puts "ホイ！"
    puts "-------------------"
    puts "あなた：左"
    puts "#{partner_achimuite}"
    left_myself = achimuite_kinds
  
  #あなた4(右)
  elsif achimuite_kinds == 4 then
    puts "ホイ！"
    puts "-------------------"
    puts "あなた：右"
    puts "#{partner_achimuite}"
    right_myself = achimuite_kinds
  
  else
    return false
  end
  
  #あっち向いて勝負結果
  if achimuite_kinds != achimuite_kinds_partner then
    puts "じゃんけん．．．"
    return true
  
  elsif achimuite_kinds == achimuite_kinds_partner then
  end
  
  puts "#{case_pattern}です！お疲れ様でした。"
  
end

next_game = true

while next_game do
  next_game = janken
end