# 新環境への移行メモ

## Homebrewのインストール
以下のコマンドを実行
```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## 設定ファイルをgithubよりダウンロード
```sh
brew install git
mkdir ~/dotfiles
cd dotfiles
git clone https://github.com/naok1207/dotfiles .
```

## Brewfileの項目を一括でインストール
Brewfileのシンボリックを作成
```sh
ls -al ~/dotfiles/Brewfile ~/Brewfile
```
cloneを行ったリポジトリ内のBrewfileの項目をインストールする
```sh
brew bundle
```

## zshの設定
各種設定ファイルのシンボリックを作成
```sh
ln -s ~/dotfiles/.config/sheldon/plugins.toml ~/.config/sheldon/plugins.toml
ln -s ~/dotfiles/.config/starship/starship.toml ~/.config/starship.toml
ln -s ~/dotfiles/.config/zsh/.zsh_aliases ~/.zsh_aliases
ln -s ~/dotfiles/.zshrc ~/.zshrc
```

## セキュリティソフトのインストール
以下のURLからインストール
https://www.avira.com/en/free-security

## 英かな設定
[![Image from Gyazo](https://i.gyazo.com/d06fff51355a2ba26284a8b48bb5e042.png)](https://gyazo.com/d06fff51355a2ba26284a8b48bb5e042)

## alfred
起動コマンド `⌘ + Space`

## Karabinater Elementsの設定
[![Image from Gyazo](https://i.gyazo.com/a44fb704f168b771a9cf6c5e7ccd3b2f.png)](https://gyazo.com/a44fb704f168b771a9cf6c5e7ccd3b2f)
