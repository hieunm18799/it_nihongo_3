mess_j = "日本語を選択しました。\nアカウントとパスワードを入力してください。"
mess_user_j = "アカウント >"
mess_password_j = "暗証番号 >"
mess_money_j = "引き出したい金額を入力してください >"

mess_e = "You have chosen English.\nEnter your account and password."
mess_user_e = "Account >"
mess_password_e = "Password >"
mess_money_e = "Please enter the amount you want to withdraw >"

mess_vn = "Ban da chon Tieng Viet.\nHay nhap ten dang nhap va mat khau"
mess_user_vn = "Ten dang nhap >"
mess_password_vn = "Mat khau >"
mess_money_vn = "Nhap so tien ban muon rut >"

class Account
  attr_accessor :user
  attr_accessor :password

  def initialize (user, password)
    self.user = user
    self.password = password
  end

  def check(user, password)
    return (self.user == user) && (self.password == password)
  end
end

class Atm_Account < Account
  attr_accessor :money

  def initialize (user, password)
    super
    self.money = money
  end

  def check(user, password)
    super
  end
end

def check_Accounts(accounts, user, password)
  for i in 0..accounts.length - 1
    if accounts[i].check(user, password)
      return i
    end
  end
  return nil
end
atm_Account = []
atm_Account << Atm_Account.new("abc", "123456")
atm_Account[0].money = 1234000

puts "言語を選んでください。"
puts "----------------------------------"
puts "英語の場合は1を選んでください。"
puts "日本語の場合は2を選んでください。"
puts "ベトナム語の場合は3を選んでください。"
puts "----------------------------------"
choice = gets.to_i
if choice == 2
  puts mess_j
  print mess_user_j
  user = gets.chomp
  print mess_password_j
  password = gets.chomp
  pos = check_Accounts(atm_Account, user, password)
  if pos != nil
    print mess_money_j
    money = gets.to_i
    if money > atm_Account[pos].money
      puts "引き出したい金額が上限を超えています。"
    else
      puts "引き出し金額は#{money}です。"
      atm_Account[pos].money -= money
      puts "残りの金額は#{atm_Account[pos].money}です。"
    end
  else
      puts "アカウントとパスワードの入力が間違いました。"
  end
  puts "-------------終了-------------"
elsif choice == 1
  puts mess_e
  print mess_user_e
  user = gets.chomp
  print mess_password_e
  password = gets.chomp
  pos = check_Accounts(atm_Account, user, password)
  if pos != nil
    print mess_money_e
    money = gets.to_i
    if money > atm_Account[pos].money
      puts "The amount you want to withdraw exceeds the upper limit."
    else
      puts "The withdrawal amount is #{money}."
      atm_Account[pos].money -= money
      puts "The remaining amount is #{atm_Account[pos].money}."
    end
  else
      puts "Wrong account and password."
  end
  puts "-------------End-------------"
elsif choice == 3
  puts mess_vn
  print mess_user_vn
  user = gets.chomp
  print mess_password_vn
  password = gets.chomp
  pos = check_Accounts(atm_Account, user, password)
  if pos != nil
    print mess_money_vn
    money = gets.to_i
    if money > atm_Account[pos].money
      puts "So tien ban muon rut vuot qua so du trong tai khoan."
    else
      puts "So tien ban rut la #{money}."
      atm_Account[pos].money -= money
      puts "So tien con lai la #{atm_Account[pos].money}."
    end
  else
      puts "Sai ten dang nhap va mat khau."
  end
  puts "-------------Het-------------"
else
  puts "番号が間違っています\n-------------THE END-------------"
end