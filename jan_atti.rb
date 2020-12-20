
#じゃんけんアプリ(あっち向いてほいつき)

def janken

    puts "じゃんけんをします"
    sleep 1
    puts "じゃんけんの後、あっち向いてほい"
    sleep 1
    puts "0(グー)1(チョキ)2(パー)3(逃げる)"

    #自分
    player1 = gets.to_i

    sleep 1
    #相手
    player2 = rand(3)

    jankens = ["グー", "チョキ", "パー","逃げる"]

    puts "自分:#{jankens[player1]}, 相手:#{jankens[player2]}"

    if player1 == player2

      puts "あいこです"
      return true

    elsif (player1 == 0 && player2 == 1) || (player1 == 1 && player2 == 2) || (player1 == 2 && player2 == 0)

      puts "あっち向いて〜(自分)"
      puts "0(上)1(下)2(左)3(右)"

      #自分
      player1 = gets.to_i
      #相手
      sleep 1
      player2 = rand(4)

      directions = ["上", "下", "左","右"]
      puts "ほい"
      puts "自分の指:#{directions[player1]}, 相手の顔:#{directions[player2]}"

      if player1 == player2
        puts "あなたの勝ちです"
      else
        puts "あなたの負けです"
      end

    elsif (player1 == 0 && player2 == 2) || (player1 == 1 && player2 == 0) || (player1 == 2 && player2 == 1)
      puts "あっち向いて〜(相手)"
      puts "0(上)1(下)2(左)3(右)"
      player2 = rand(4)
      sleep 1
      player1 = gets.to_i

      directions = ["上", "下", "左","右"]
      puts "ほい"
      puts "相手の指:#{directions[player2]}, 自分の顔:#{directions[player1]}"

      if player2 == player1
        puts "あなたの負けです"
      else
        puts "あなたの勝ちです"
      end

    else
      puts "あなたは逃げました"
      puts "あなたの負けです"
    end
end

  again = true

  while again do
    again = janken
  end
