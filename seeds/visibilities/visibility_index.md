---

category_name: visibility
title: 表示ロジック一覧の取得
priority: 999

---

# 表示ロジック一覧の取得

## 表示ロジック一覧を取得します。

auth_token*:
: __string__
: 認証時に必要なトークンです。

question_id*:
: __integer__
: 取得する分岐設定を含む質問のid

~~~
定義
GET https://creativesurvey.com/api/v1/questions/:question_id/visibilities

リクエスト例
curl -X GET https://creativesurvey.com/api/v1/questions/1824/visibilities \
-d "auth_token=Vp5vzALpGzhqkcpxxxxx"

レスポンス例
[
  {
    "updated_at": "2014-04-23T11:46:40+09:00",
    "question_id": 1824,
    "order_index": null,
    "inbox_id": 6,
    "id": 58,
    "created_at": "2014-04-23T11:46:40+09:00"
  }
]

リソースが存在しない場合
{
  "message": "resource not found"
}
~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~

