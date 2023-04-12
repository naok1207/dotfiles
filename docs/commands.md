シンボリックログ
```sh
ln -s ~/dotfiles/.config/sheldon/plugins.toml ~/.config/sheldon/plugins.toml
ln -s ~/dotfiles/.config/starship/starship.toml ~/.config/starship.toml
ln -s ~/dotfiles/.config/zsh/.zsh_aliases ~/.zsh_aliases
ln -s ~/dotfiles/.zshrc ~/.zshrc
```

確認
```
ls -al <シンボリックしたファイル>
```

削除
```
unlink <シンボリック先のファイル>
```

abbr
```sh
abbr import-aliases --dry-run
```

brew
```sh
# Brewfileへ書き出す
brew bundle dump
# Brewfileの未インストールのものをインストール
brew bundle
# Brewfile内にないものを一括アンインストール
brew bundle cleanup
# Brwefile内でインストール・アップデートすべきものがないか確認
brew bundle check
# Brewfileの内容を確認
brew bundle list
```

z
```
echo '. /usr/local/etc/profile.d/z.sh' >> ~/.zshrc
```
