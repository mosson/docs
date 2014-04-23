---

category_name: egression
title: 最終画面の変更
priority: 999

---

# 最終画面の変更

## 最終画面の変更について

auth_token*:
: __string__
: 認証時に必要なトークンです。

egression_id*:
: __integer__
: 取得する最終画面のid

egression[rendered_sentence]:
: __string__
: 最終画面の文言

egression[:is_redirect]:
: __boolean__
: _(デフォルト: false)_
: trueの場合、最終画面の表示ではなくリダイレクトをさせます

egression[redirect_url]:
: __string__
: リダイレクトを指定する場合のurl

~~~
定義
PUT https://creativesurvey.com/api/v1/egressions

リクエスト例
$ curl -X PUT https://creativesurvey.com/api/v1/egressions/507 \
-d "auth_token=KRXJUq7yxjT18VqpoTKp" \
-d "egression[redirect_url]=http://google.com" \
-d "egression[rendered_sentence]=最終画面です。"

レスポンス例
{
  "updated_at": "2014-04-21T23:38:13+09:00",
  "sentence": null,
  "rendered_sentence": "最終画面です。",
  "created_at": "2014-04-21T19:27:26+09:00",
  "description": "",
  "id": 507,
  "inbox_id": 6,
  "is_redirect": true,
  "question_type": 1,
  "questionnaire_id": 507,
  "redirect_url": "http://google.com"
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