# Frontend Mentor - Shortly URL shortening API Challenge solution

## プロダクトに対する要求

### 機能的な要求

1. デバイスの画面サイズに合わせて、サイトの最適なレイアウトを表示する

2. 任意の有効なURLを短縮できる

3. ブラウザを更新しても、短縮されたリンクの一覧が表示される

4. 短縮されたリンクをワンクリックでクリップボードにコピーできる

5. フォームの送信時に以下のような状態であればエラーメッセージが表示される
   * 入力フィールドが空の場合

### 非機能的な要求

1. 無料で稼働できること
   * 一時的に動作を確認できればいい（常時ではない）

---

## アーキテクチャ全体図

### 匿名利用者

```mermaid
sequenceDiagram
    autonumber

    Browser->>Frontend Entrypoint:　
    Frontend Entrypoint->>Token Endpoint: Fetch
    Token Endpoint->>Browser:　
    Note over Token Endpoint,Browser: Anonymous Access Token

```

### 短縮URLの発行

```mermaid
sequenceDiagram
    autonumber

    Client->>Shortened API: Request
    Note over Client,Shortened API: Long URL
    Shortened API->>Client: Response
    Note over Client,Shortened API: Short URL

```

### 短縮URLの応答

```mermaid
sequenceDiagram
    autonumber

    Client->>Shortened API: Request
    Note over Client,Shortened API: Short URL
    Shortened API->>Client: Response(Redirect)
    Note over Client,Shortened API: Long URL

```

## 選定した経緯

### 選定した基準や根拠

* 機能的な要求 2
  * 詳細をできるだけ Gem に任せて境界を明確にしたい
    * Gem「[jpmcgrath/shortener](https://github.com/jpmcgrath/shortener)」で責務を果たせそう

* 機能的な要求 3
  * 最低限、ブラウザを閉じるまで匿名の利用者を識別したい
    * ライフサイクルは1日程度のトークン発行で実現できそう
      * 改ざんを検知できる [JWT](https://zenn.dev/ritou/articles/4a5d6597a5f250) を使用する
      * セッションハイジャックなどの根本的な対策にはならないが、sessionStorage を使用する

### 選定しなかった手段

* 機能的な要求 3
  * 外部サービス提供機能「[匿名認証](https://community.auth0.com/t/anonymous-users/65009)」
    * 外部依存はできるだけ避けたいため
    * せっかくなら自前で検討したいため

### 外部依存している詳細

* 特になし



### その他観点

#### セキュリティ

#### テストのしやすさ

#### リリースのしやすさ

#### デプロイのしやすさ

#### 運用・保守のしやすさ

---

## 参照リンク
