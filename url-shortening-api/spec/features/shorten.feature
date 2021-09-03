Feature: URL短縮機能
  Background:
    Given デスクトップのトップ画面を表示する

  Scenario: 有効なURLを短縮できる
    When URL入力フィールドに"https://github.com/maeda-m"と入力する
    And 送信ボタンをクリックする

    Then URL"https://github.com/maeda-m"の短縮結果とボタン"Copy"を表示している

  Scenario: ブラウザを更新しても、短縮されたリンクのリストが表示される
    When URL"https://github.com/maeda-m"の短縮操作をする
    And URL"https://github.com/maeda-m"の短縮結果とボタン"Copy"を表示している
    And ブラウザを再読み込みする

    Then URL"https://github.com/maeda-m"の短縮結果とボタン"Copy"を表示している

  Scenario: 短縮されたリンクをワンクリックでクリップボードにコピーできる
    When URL"https://github.com/maeda-m"の短縮操作をする
    And URL"https://github.com/maeda-m"の短縮結果とボタン"Copy"を表示している
    And URL"https://github.com/maeda-m"の短縮結果のボタン"Copy"をクリックする

    Then URL"https://github.com/maeda-m"の短縮結果とボタン"Copied!"を表示している
    And URL"https://github.com/maeda-m"の短縮結果をクリップボートにコピーしている

  Scenario: フォームの送信時にエラーメッセージを表示できる
    When URL入力フィールドに""と入力する
    When 送信ボタンをクリックする

    Then エラーメッセージ"Please add a link"を表示している

    When URL入力フィールドに"invalid url"と入力する
    When 送信ボタンをクリックする

    Then エラーメッセージ"Not a valid URL"を表示している
