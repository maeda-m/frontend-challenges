# Frontend Mentor - Shortly URL shortening API Challenge solution

## プロダクトに対する要求

### 機能的な要求

- デバイスの画面サイズに合わせて、サイトの最適なレイアウトを表示する
- 任意の有効なURLを短縮できる
- ブラウザを更新しても、短縮されたリンクの一覧が表示される
- 短縮されたリンクをワンクリックでクリップボードにコピーできる
- フォームの送信時に以下のような状態であればエラーメッセージが表示される
  - 入力フィールドが空の場合

### 非機能的な要求

* 無料で稼働できること

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

### 選定しなかった手段

### 外部依存している詳細

### その他観点

#### セキュリティ

#### テストのしやすさ

#### リリースのしやすさ

#### デプロイのしやすさ

#### 運用・保守のしやすさ

---

## 参照リンク
