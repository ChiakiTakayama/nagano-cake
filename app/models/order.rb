class Order < ApplicationRecord
  enum :payment_method, [ クレジットカード, 銀行振込 ]
  # enum :payment_method, [ 0:クレジットカード, 1:銀行振込 ]の可能性あり

  enum :status, [ 入金待ち, 入金確認, 製作中, 発送準備中, 発送済み]
end
