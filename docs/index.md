---
marp: true
---

<!--
theme: gaia
size: 16:9
paginate: true
style: |
  section {
    background-color: #FFFFFF;
    font-size: 24px;
  }
  section.title h1 {
    font-size: 64px;
  }
footer: "から皆のターミナル環境も教えてほしい(本音)"
-->

<style>
  img[alt~="center"] {
    display: block;
    margin: 0 auto;
  }
</style>

<!-- _class: title -->

# 俺のターミナル環境を晒す 2021

### ～ 見た目だけじゃない！高機能かつ高速な環境を Git で管理しよう！ ～

</br>
</br>

#### Presented by いの

---

<!--
_style: |
  section.lead h1 {
    text-align: center;
  }
_class: lead
header: ""
footer: "俺のターミナル環境を晒す 2021"
-->

# ターミナルって？

---

<!--
header: ターミナルとは
-->

# 正式名称なんだろうね？

- 端末エミュレータ
- コマンドラインエミュレータ
- コンソール

<!--
(何かしらの)端末として動作するソフトウェアを指すことが一般的
様々なOS上で様々なシェルを使い、開発する
-->

![h:400px center](imgs/terminal.png)

<!--
今日取り上げるのは、TeraTermやPuTTYなどのSSHクライアントなどではなく、
ふつうのGUIターミナルアプリケーションです。
MACで言えば標準のターミナルやiTerm2など、Windowsで言えばmintty。
-->

---

<!--
_style: |
  section.lead h1 {
    text-align: center;
  }
_class: lead
header: ""
footer: "俺のターミナル環境を晒す 2021"
-->

# 0. ターミナルの話と言えば…

---

<!--
header: 0. 『おまえらのターミナル』と言えば…
-->

# あの有名ブログが思い浮かぶ

![h:400 center](https://qiita-user-contents.imgix.net/https%3A%2F%2Fcdn.qiita.com%2Fassets%2Fpublic%2Farticle-ogp-background-1150d8b18a7c15795b701a55ae908f94.png?ixlib=rb-1.2.2&w=1200&mark=https%3A%2F%2Fqiita-user-contents.imgix.net%2F~text%3Fixlib%3Drb-1.2.2%26w%3D840%26h%3D380%26txt%3D%25E3%2581%258A%25E5%2589%258D%25E3%2582%2589%25E3%2581%25AE%25E3%2582%25BF%25E3%2583%25BC%25E3%2583%259F%25E3%2583%258A%25E3%2583%25AB%25E3%2581%25AF%25E3%2583%2580%25E3%2582%25B5%25E3%2581%2584%26txt-color%3D%2523333%26txt-font%3DHiragino%2520Sans%2520W6%26txt-size%3D54%26txt-clip%3Dellipsis%26txt-align%3Dcenter%252Cmiddle%26s%3D433751ebbf493bef142c05514d762e83&mark-align=center%2Cmiddle&blend=https%3A%2F%2Fqiita-user-contents.imgix.net%2F~text%3Fixlib%3Drb-1.2.2%26w%3D840%26h%3D500%26txt%3D%2540kinchiki%26txt-color%3D%2523333%26txt-font%3DHiragino%2520Sans%2520W6%26txt-size%3D45%26txt-align%3Dright%252Cbottom%26s%3D4199be4b5d74b0c77949191d45b608a7&blend-align=center%2Cmiddle&blend-mode=normal&s=dfb3ea5b7bd8b6a31f8874d7acc7b85a)

- 2019 年夏に Qiita に投稿された、@kinchiki 氏による記事
- 釣りタイトルと揶揄されることもあるが、ターミナルの**見た目が大事**であることは間違いない。

---

<!--
_style: |
  section.lead h1 {
    text-align: center;
  }
_class: lead
header: ""
footer: "俺のターミナル環境を晒す 2021"
-->

# 1. 私のターミナル史

---

<!--
header: 1. 私のターミナル史
-->

# 1.1. 2019 年初期の私のターミナル

![h:320 center](imgs/2019.png)

- こういう環境で作業してた。正気か？
- 更に遡ると、そもそも WSL ではなく **Git for Windows** や **Cygwin** を使っていた。
- 「Windows は開発に向かない」と言われても仕方ないね…。

<!--
Cygwin：UNIX系コマンドを入力できるような偽物
（それを言ったらWSL1も互換レイヤなのでニセモノだけど…）

当時はWindowsでまともにUNIX系コマンドを操作することは出来ませんでした。
しかしあまり知識を持ち合わせていない僕はそれほど苦に感じていない節もありました。無知は怖い。
 -->

---

# 1.2. 2019 年後期のターミナル

![h:320 center](./imgs/cmder.jpg)

- かなり進化した。
- [Cmder](https://cmder.net/) と呼ばれるターミナルエミュレータを導入したことで、WSL をカスタマイズ可能に。
- プロンプトは Powerline でデザイン。(実はこの時作ったものを今でもベースとして使っている)

---

<!--
_style: |
  section.lead h1 {
    text-align: center;
  }
_class: lead
header: ""
footer: "俺のターミナル環境を晒す 2021"
-->

# 1.3. 2021 年現在の私のターミナルは…

---

<!--
header: 1. 私のターミナル史
-->

# 美しい…

<!-- ![h:500px center](./imgs/dotfiles.gif) -->

![w:1150px center](./imgs/2021.png)

---

<!--
_style: |
  section.lead h1 {
    text-align: center;
  }
_class: lead
header: ""
footer: "俺のターミナル環境を晒す 2021"
-->

# 2. こだわりポイント解説

ここからが本題です

---

<!--
_style: |
  section.lead h1 {
    text-align: center;
  }
_class: lead
header: 2. こだわりポイント解説
-->

# 3 つのポイント

## 見た目：**Powerlevel10K**

## 機能：**zinit** / **fzf**

## 管理：**dotfiles**

---

# 2.0. 構成

- OS: **WSL2**
- シェル：**Zsh**
- プラグインマネージャ：**zinit** (旧名 zplugin)
- カラープラグイン：**Powerlevel10k**
- 補足
  - vimmer じゃないので vim のプラグイン管理はしていない
  - tmux の設定も最低限
  - なので本格派には怒られそう :sweat_smile:

---

<!--
_style: |
  section.lead h1 {
    text-align: center;
  }
_class: lead
header: ""
-->

# ターミナルの見た目をカラフルにしたい…

---

<!--
  header: 2. こだわりポイント解説
-->

![bg fit right:40%](imgs/2021-2.png)

## 2.1. 見た目：**Powerlevel10K**

特長

- 見やすく、情報量の多いプロンプト
  - パス、Git、OS アイコン、日付時刻
  - その他仮想環境の情報など
- `ls` コマンドの適切な色分け (違うかも)
- **高速** ← 大事
- Windows Terminal は神。

課題

- ドキュメントが渋い :angry:
  - [先人](https://github.com/Powerlevel9k/powerlevel9k/wiki/Show-Off-Your-Config) は神 :angel:
- 9K の設定ベタ書きをそのまま移行している

---

<!--
_style: |
  section.lead h1 {
    text-align: center;
  }
_class: lead
header: ""
-->

# Zsh のプラグインを管理したい…

---

<!--
  header: 2. こだわりポイント解説
-->

## 2.2.1. 機能：**zinit**

![bg fit right:40%](https://raw.githubusercontent.com/zdharma/zinit/images/startup-times.png)

特長

- [**高速**](https://twitter.com/inox4629music/status/1321678326222606337/photo/1)なプラグインマネージャ
  - 有名な Zplug や OhMyZsh と比較して圧倒的
- 簡単に導入できる
  - `.zshrc` に書き込むだけ
  <!-- - Prezto のような独自管理機能は無く、
    ただ `~/.zinit` にインストールされるだけ -->
- 充実したプラグイン
  - No **autocomplete/autosuggestions**, No Life.
  - OMZ や Prezto の部分機能も取り入れられる

課題

- ドキュメントが渋い :rage:
  - どのコマンドでどうなるのかが分からない
  - 先人は神 :angel:

---

<!--
_style: |
  section.lead h1 {
    text-align: center;
  }
_class: lead
header: ""
-->

# もっと高速にターミナルを操作したい…

---

<!--
  header: 2. こだわりポイント解説
-->

## 2.2.2. 機能： :star: **fzf** :star:

特長

- 全人類使え。
- `fzf` コマンドに渡すだけで、
  標準出力の結果を曖昧検索(=fuzzy finder)してくれる
- 例 1：`find . | fzf`

![bg fit right](imgs/find.png)

---

## 2.2.2. 機能：:star: **fzf** :star:

特長

- **プレビュー機能が死ぬほど便利**
  - 神。
  - peco にはない機能
- 例 2：強化版 `cd`
  - `cdr` (ディレクトリ履歴)
    　　　　＋
    `tree` (ファイルのツリー表示)

![bg fit right:55%](imgs/cd.png)

---

## 2.2.2. 機能：:star: **fzf** :star:

特長

- 例 3：強化版 `git add`

<!-- ![h:400px center](imgs/git.gif) -->

![h:400px center](imgs/git-status.png)

---

<!--
_style: |
  section.lead h1 {
    text-align: center;
  }
_class: lead
header: ""
-->

# 環境構築、一発で終わらせたくない？

---

<!--
  header: 2. こだわりポイント解説
-->

## 2.3. 管理：dotfiles

![bg fit right:40%](imgs/gh-dotfiles.png)

- dotfiles とは、`~/.bashrc` や `~/.gitconfig` など
- 転じて、これらの設定ファイルの Git リポジトリを指す。
  - GitHub で検索すると、148k 個もヒット！
  - 24k スターを獲得しているレポジトリも。
- [特におすすめな人](https://qiita.com/yutakatay/items/c6c7584d9795799ee164#%E7%89%B9%E3%81%AB%E3%81%8A%E3%81%99%E3%81%99%E3%82%81%E3%81%AA%E4%BA%BA) より引用

![h:250px center](imgs/dotfiles-target.png)

---

<!--
_style: |
  section.lead h1 {
    text-align: center;
  }
_class: lead
-->

# [作ってみた](https://github.com/inox-ee/dotfiles)

---

<!--
_style: |
  section.lead h1 {
    text-align: center;
  }
_class: lead
-->

# [やってみた](https://drive.google.com/file/d/1fjEe0rrdwMIyxr-znt892fK9DRKEzDjv/view?usp=sharing)

<!-- ---

<video
  src="./imgs/dotfiles.mp4"
  width="1130"
  height="550"
  controls>
</video> -->

---

<!--
_style: |
  section.lead h1 {
    text-align: center;
  }
_class: lead
-->

# まとめ

---

<!--
_style: |
  section.lead h1 {
    text-align: center;
  }
_class: lead
-->

# みんなも dotfiles を公開して知見を共有しよう！
