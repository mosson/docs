---

category_name: question
title: 質問の作成
priority: 998

---

# 質問の作成

## 質問を作成します。

auth_token*:
: __string__
: 認証時に必要なトークンです。

questionnaire_id*:
: __integer__
: 質問を作成する質問表のid

question_type*:
: __integer__ _(デフォルト: 1)_
: 質問タイプ。 1,2,4から選択します。
: 1: テキストのみ
: 2: テキストと画像
: 4: テキストと長文

answer_type*:
: __integer__ _(デフォルト: 1)_
: 質問ステップのタイプ。下記の質問タイプから選択します。
: 2: テキスト選択
: 4: 画像選択
: 5: 自由入力
: 6: エリアマッピング
: 7: スライドバー
: 8: マルチスライド
: 9: クリッツ
: 11: マトリクス
: 13: 開始画面
: 14: テキスト提示
: 16: マトリクス(画像)
: 17: 画像提示
: 18: サバイバル
: 19: サバイバル画像
: 20: マルチクリッツ

rendered_sentence:
: __string__ _(デフォルト: "")_
: 質問の文言

description:
: __string__ _(デフォルト: "")_
: 注意書きや補足などのテキストを指定します。

placeholder:
: __string__ _(デフォルト: "")_
: "次へ"ボタンの文言を指定します。

launcher_string:
: __string__ _(デフォルト: "")_
: クリッツポイントやエリアマッピングを始める際の"はじめる"ボタンの文言を指定します。

is_timer:
: __boolean__ _(デフォルト: false)_
: 時間制限を有効にするかどうか
: trueにすると、設定した秒数(timer_value)で回答時間制限をします。

timer_value:
: __integer__ _(デフォルト: 5)_
: 時間制限の秒数を設定します。
: is_timerがtrueの際、有効になります。

timer_distination_id:
: __integer__ _(デフォルト: null)_
: 時間制限が有効な際、時間を過ぎたらどの質問にスキップするかを設定します。
: スキップ先の質問idを指定します。

is_random:
: __boolean__ _(デフォルト: false)_
: ランダム設定を有効にするかどうか

range_min:
: __integer__ _(デフォルト: null または 1)_
: 回答数の最小値を指定します。
: デフォルトは基本的にnullですが、質問タイプによってデフォルト値が1の場合があります。
: この値を1に指定すると、必須回答となります。

range_max:
: __integer__ _(デフォルト: null または 1)_
: 回答数の最大値を指定します。
: デフォルトは基本的にnullですが、質問タイプによってデフォルト値が1の場合があります。
: この値を1に指定すると、単一回答になります。

order_index:
: __integer__
: 質問順を指定します。
: アンケートの質問はorder_index順に並びます。

inbox_id:
: __integer__
: 該当の質問を含むインボックスのid

is_expand:
: __boolean__ _(デフォルト: false)_
: 画像を使用する質問ステップのタイプにおいて、画像をクリックで拡大するかどうかを設定します。

is_required:
: __boolean__ _(デフォルト: false)_
: 必須回答にするかどうかを指定します。

is_shuffle:
: __boolean__ _(デフォルト: false)_
: 回答項目をランダマイズするかどうか

is_shuffle_col:
: __boolean__ _(デフォルト: false)_
: 列項目をランダマイズするかどうか

is_shuffle_row:
: __boolean__ _(デフォルト: false)_
: 行項目をランダマイズするかどうか

fix_last_col:
: __boolean__ _(デフォルト: null)_
: 行項目をランダムにした際に行末尾を固定します。

fix_last_row:
: __boolean__ _(デフォルト: null)_
: 列項目をランダムにした際に列末尾を固定します。

~~~
定義
POST https://creativesurvey.com/api/v1/questionnaires/:questionnaire_id/questions

リクエスト例
$ curl -X POST https://creativesurvey.com/api/v1/questionnaires/511/questions \
-d "auth_token=Vp5vzALpGzhqkcpxxxxx" \
-d "question[rendered_sentence]=MySurvey" \
-d "question[is_timer]=false" \
-d "question[is_shuffle]=false"

レスポンス例
{
  "updated_at": "2014-05-08T18:30:14+09:00",
  "timer_value": 5,
  "timer_destination_id": null,
  "sentence": "",
  "rendered_sentence": "MySurvey",
  "range_min": null,
  "range_max": 1,
  "questionnaire_id": 511,
  "question_type": 1,
  "placeholder": "",
  "order_index": 0,
  "launcher_string": "",
  "is_timer": false,
  "in_random_range": null,
  "id": 1906,
  "fix_last_row": null,
  "fix_last_col": null,
  "fix_last": null,
  "description": null,
  "created_at": "2014-05-08T18:30:14+09:00",
  "answer_type": 1,
  "inbox_id": 6,
  "is_expand": false,
  "is_logic": null,
  "is_range": false,
  "is_required": null,
  "is_shuffle": false,
  "is_shuffle_col": null,
  "is_shuffle_row": null
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

