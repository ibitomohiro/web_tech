require 'cgi'
cgi = CGI.new
# データを受け取った後、HTMLの形式でレスポンスを返す
cgi.out("type" => "text/html", "charset" => "UTF-8") {
  # 情報の目印とした"goya"のデータを cgi['goya']と言う記述で取り出し、ローカル変数に代入する
  get = cgi['goya']
  # HTMLでレスポンスを返却する
  "<html>
    <body>
      <p>ゴーヤの大きさと売った相手の情報は下記になります</p>
      文字列：#{get}
    </body>
  </html>"

  get_1 = cgi['goya1']
  # HTMLでレスポンスを返却する
  "<html>
    <body>
      <p>譲渡先が自家消費でないゴーヤの情報は下記になります</p>
      文字列：#{get_1}
    </body>
  </html>"

  get_2 = cgi['goya_false']
  # HTMLでレスポンスを返却する
  "<html>
    <body>
      <p>品質が悪いゴーヤの情報は下記になります</p>
      文字列：#{get_2}
    </body>
  </html>"
  
}