(require 'cask "cask/path")
(cask-initialize)
(require 'pallet)
(require 'init-loader)
(pallet-mode t)
(setq init-loader-show-log-after-init nil)
(init-loader-load "~/.emacs.d/inits")
