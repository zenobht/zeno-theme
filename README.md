# Zeno-theme for [Emacs](https://www.gnu.org/software/emacs/)

> A dark opinionated theme with vibrant colors for [Emacs](https://www.gnu.org/software/emacs/).
> Inspired by Dracula themes

## Screenshots
![Screenshot1](https://raw.github.com/jbharat/zeno-theme/master/screenshot1.png "Screenshot1")

![Screenshot2](https://raw.github.com/jbharat/zeno-theme/master/screenshot2.png "Screenshot2")

Screenshot info: Spacemacs, Source-Code-Pro font. 
To change the modeline and cursor on spacemacs with evil-mode
```   
 (setq evilNormalColor "#D2527F") 
 (setq evilInsertColor "#2ABB9B")
 (setq evilVisualColor "#665C7E")
 (setq evil-normal-state-cursor `(box ,evilNormalColor)) 
 (setq evil-insert-state-cursor `((bar . 3) ,evilInsertColor)) 
 
 (setq spaceline-highlight-face-func 'spaceline-highlight-face-evil-state)
 (set-face-attribute
 'spaceline-evil-normal nil :background evilNormalColor :foreground "black")
 (set-face-attribute
 'spaceline-evil-visual nil :background evilVisualColor :foreground "white")
 (set-face-attribute
 'spaceline-evil-insert nil :background evilInsertColor :foreground "black")

```

## Installation

Installing using MELPA 
```
M-x package-install <RET> zeno-theme
```

## Customizations

`M-x customize-group: zeno-theme`:

* `zeno-theme-enable-italics` 
Enables italics for functions, directories, comments

## License

[GPL3 License](./LICENSE)
