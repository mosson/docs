---

category_name: questionnaire_variable
title: 置き換え変数設定の削除
priority: 995

---

# 置き換え変数設定の削除

## アンケートの置き換え変数設定を削除します。

auth_token*:
: __string__
: 認証時に必要なトークンです。

questionnaire_variable_id:
: __integer__
: 削除する置き換え変数設定のid

~~~
定義
DELETE https://creativesurvey.com/api/v1/questionnaire_variables/:questionnaire_variable_id

リクエスト例
curl -X DELETE https://creativesurvey.com/api/v1/questionnaire_variables/100 \
-d "auth_token=Vp5vzALpGzhqkcpxxxxx"

レスポンス例
{
  "updated_at": "2014-04-22T18:42:34+09:00",
  "target": "question_result",
  "sub_item_id": null,
  "separator": "",
  "result_value": "hoge",
  "result_type": "2",
  "answer_item_id": null,
  "created_at": "2014-04-22T17:55:16+09:00",
  "id": 100,
  "inbox_id": 6,
  "is_separate": false,
  "order_index": 0,
  "questionnaire_id": 510,
  "result_id": 1829
}

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

