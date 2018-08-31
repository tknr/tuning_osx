#!/bin/bash -x

## Mac OSX Sierraの高速化とおすすめ設定。 | WebEssentials
## https://www.webessentials.biz/osx-customize/sox-sierra-fast/

defaults write -g NSWindowResizeTime -float 0.005
defaults write com.apple.dock expose-animation-duration -float 0.05
defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool false
defaults write -g QLPanelAnimationDuration -float 0
defaults write NSGlobalDomain NSWindowResizeTime -float 0.001
defaults write com.apple.finder DisableAllAnimations -bool true
defaults write com.apple.dock launchanim -bool false
defaults write com.apple.dock expose-animation-duration -float 0.1
defaults write com.apple.mail DisableReplyAnimations -bool true
defaults write com.apple.mail DisableSendAnimations -bool true
defaults write com.apple.Safari WebKitInitialTimedLayoutDelay 0.1

## Mac Finderのタイトルバーにフォルダのフルパスを表示する裏技 / Inforati
## http://inforati.jp/apple/mac-tips-techniques/system-hints/how-to-display-the-full-path-of-folder-in-macos-finder-titlebar.html
defaults write com.apple.finder _FXShowPosixPathInTitle -boolean true

##【Mac】隠しファイル・隠しフォルダを表示する方法 - Qiita
## https://qiita.com/TsukasaHasegawa/items/fa8e783a556dc1a08f51
defaults write com.apple.finder AppleShowAllFiles true

## .DS_Storeの仕組みと削除＆作成しないよう設定する方法 | UX MILK
## http://uxmilk.jp/48160
find ~/ -name ".DS_Store" -delete
defaults write com.apple.desktopservices DSDontWriteNetworkStores True

killall Dock
Killall Finder
