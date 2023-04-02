#!/bin/bash

function asdf() {
  git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.10.2
  echo -e '\n. $HOME/.asdf/asdf.sh' >> ~/.bashrc
  echo -e '\n. $HOME/.asdf/completions/asdf.bash' >> ~/.bashrc

  if [ -f ~/.zshrc ]; then
    echo -e '\n. $HOME/.asdf/asdf.sh' >> ~/.zshrc
    echo -e '\n. $HOME/.asdf/completions/asdf.bash' >> ~/.zshrc
  fi

  echo "legacy_version_file = yes" >> ~/.asdfrc
}
