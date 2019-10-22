# MacBook Setup

## Python Environment Setup

- [Definitive guide to python on Mac OSX](https://medium.com/@briantorresgil/definitive-guide-to-python-on-mac-osx-65acd8d969d0)
- Git install
  - `brew install git`
- Install Fish shell
  - `brew install fish`
  - `cat /etc/shells | grep /usr/local/bin/fish || sudo sh -c 'echo "/usr/local/bin/fish" >> /etc/shells'`
- Pyenv config for Fish shell
- Configure `pyenv` to work with Fish shell
  - `echo "source (pyenv init - | psub)" >> ~/.config/fish/config.fish`
  - [Reference](https://angristan.xyz/how-to-use-nvm-rbenv-pyenv-goenv-with-fish-shell/)

## Java installation

* `brew tap AdoptOpenJDK/openjdk`
* `brew cask info adoptopenjdk`
* `brew search jdk`
* `brew cask install adoptopenjdk8`
* `java -version`
* [Reference](https://stackoverflow.com/questions/52524112/how-do-i-install-java-on-mac-osx-allowing-version-switching)

## sbt installation

* `brew install sbt`
* [Reference](https://www.scala-sbt.org/1.x/docs/Installing-sbt-on-Mac.html)

## Docker desktop installation

* Follow the steps from [Install Docker Desktop on Mac](https://docs.docker.com/docker-for-mac/install/)

## Other packages

- `brew install jq`
- `brew install yq`

## Optional utilities

* Typora Markdown editor
  * `brew cask install typora`
* iTerm2 terminal
  * `brew cask install iterm2`
  * [Reference](https://sourabhbajaj.com/mac-setup/iTerm/)
* SourceTree git client
  * `brew cask install sourcetree`
* Sublime text
  * `brew cask install sublime-text`
* Clipy (Clipboard manager)
  * `brew cask install clipy`

