---

category_name: page_order_item
title: 質問順序一覧の取得
priority: 999

---

# 質問順序一覧の取得

## アンケートの質問順を一覧で取得します。

auth_token*:
: __string__
: 認証時に必要なトークンです。

questionnaire_id*:
: __integer__
: 取得したい質問順序を含むアンケートid

~~~
定義
GET https://creativesurvey.com/api/v1/questionnaires/:questionnaire_id/page_order_items

リクエスト例
curl -X GET https://creativesurvey.com/api/v1/questionnaires/508/page_order_items \
-d "auth_token=Vp5vzALpGzhqkcpxxxxx"

レスポンス例
[
  {
    "updated_at": "2014-04-22T10:50:27+09:00",
    "questionnaire_id": 508,
    "question_id": 1824,
    "order_index": 0,
    "is_connect": false,
    "inbox_id": 6,
    "id": 1791,
    "created_at": "2014-04-22T10:50:26+09:00"
  },
  {
    "updated_at": "2014-04-22T10:50:27+09:00",
    "questionnaire_id": 508,
    "question_id": 1825,
    "order_index": 1,
    "is_connect": false,
    "inbox_id": 6,
    "id": 1792,
    "created_at": "2014-04-22T10:50:27+09:00"
  },
  {
    "updated_at": "2014-04-22T10:50:28+09:00",
    "questionnaire_id": 508,
    "question_id": 1826,
    "order_index": 2,
    "is_connect": false,
    "inbox_id": 6,
    "id": 1793,
    "created_at": "2014-04-22T10:50:28+09:00"
  },
  {
    "updated_at": "2014-04-22T11:40:09+09:00",
    "questionnaire_id": 508,
    "question_id": 1827,
    "order_index": 3,
    "is_connect": false,
    "inbox_id": 6,
    "id": 1794,
    "created_at": "2014-04-22T11:40:08+09:00"
  },
  {
    "updated_at": "2014-04-22T16:39:52+09:00",
    "questionnaire_id": 508,
    "question_id": null,
    "order_index": null,
    "is_connect": null,
    "inbox_id": 6,
    "id": 1796,
    "created_at": "2014-04-22T16:39:52+09:00"
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
