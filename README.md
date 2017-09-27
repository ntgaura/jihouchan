# 時報ちゃんBOT

Mastodonで使える時報ちゃんBOTです。

# 使い方

とりあえず `bundle install --path=vendor/bundle` しましょう。

環境変数 `MASTODON_API_TOKEN` にMastodonのAPIトークンを設定して起動すると、
その時間帯のメッセージを生成してMastodonに投稿します。

設置する場合は `cron` などで一時間に一度程度起動してください。
