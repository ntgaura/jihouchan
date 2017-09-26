require 'mastodon'

MASTODON_API_TOKEN = ENV['MASTODON_API_TOKEN']

client = Mastodon::REST::Client.new(
  base_url: 'https://friends.nico',
  bearer_token: MASTODON_API_TOKEN
)

hour = Time.now.strftime('%H')
tv_chan = <<-"EOS"
時報ちゃん(非公式)が#{hour}時くらいをお伝えします！
　　▁▁▁╲▁╱▁▁▁
　　▏▁▁▁▁▁▁▁　▏
　▕▕　　　　　●　▏▏
　▕▕　●　　　　　▏▏
　▕▕　　　▲　　　▏▏
　▕▕▁▁▁▁▁▁▁▏▏
　▕▁▁　▁▁▁　▁▁▏
　　　　Ｕ　　　Ｕ
ぴ・ぴ・ぴ・ぽーん！
(AA提供: ＠hituzi25_CA@friends.nico)
EOS
client.create_status(tv_chan)
