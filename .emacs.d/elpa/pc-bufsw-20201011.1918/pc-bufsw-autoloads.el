;;; pc-bufsw-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "pc-bufsw" "pc-bufsw.el" (0 0 0 0))
;;; Generated autoloads from pc-bufsw.el

(autoload 'pc-bufsw-mru "pc-bufsw" "\
Switch to the most recently used buffer." t nil)

(autoload 'pc-bufsw-lru "pc-bufsw" "\
Switch to the least recently used buffer." t nil)

(autoload 'pc-bufsw-clear-default-keybindings "pc-bufsw" "\
Deprecated. Customize `pc-bufsw-keys' instead." nil nil)

(autoload 'pc-bufsw-default-keybindings "pc-bufsw" "\
Deprecated.  Use (`pc-bufsw' t) instead." nil nil)

(unless (fboundp 'pc-bufsw-update-keybindings) (defun pc-bufsw-update-keybindings nil "Enable keybindings according to `pc-bufsw-keys'." (setcdr pc-bufsw-map nil) (mapc (lambda (key) (define-key pc-bufsw-map key 'pc-bufsw-mru)) (car pc-bufsw-keys)) (mapc (lambda (key) (define-key pc-bufsw-map key 'pc-bufsw-lru)) (cadr pc-bufsw-keys))) (defvar pc-bufsw-map (make-sparse-keymap) "pc-bufsw mode keymap.") (define-minor-mode pc-bufsw "A minor mode to switch Emacs buffers according to most recently used order.\n\n    This is similar to window or tab switchers that are available in PC desktop\n    environments or applications. By default it uses Ctrl-Tab and Ctrl-Shift-Tabs\n    key to switch according to most-recently-used or least-recently-used order.\n    To customize keybindings edit `pc-bufsw-keys'." :keymap 'pc-bufsw-map :global t :group 'pc-bufsw (when pc-bufsw (pc-bufsw-update-keybindings))) (defgroup pc-bufsw nil "Settings for PC style quick buffer switcher." :group 'convenience) (defcustom pc-bufsw-keys '(([C-tab] "\33[1;5I" "\33[1;5i") ([C-S-tab] [C-S-iso-lefttab] "\33[1;6I" "\33[1;6i")) "Two-element list with key sets to cycle from most to least recently\nused buffers and in reverse.  The default sets contain <C-tab> and <C-S-tab> plus sequence\nreported by some terminals when pressing those keys that Emacs does not recognize as such." :group 'pc-bufsw :type '(list (repeat :tag "Cycle from most to least recently used buffers using any of" key-sequence) (repeat :tag "Cycle from least to most recently used buffers using any of" key-sequence)) :set (lambda (symbol value) (set-default symbol value) (pc-bufsw-update-keybindings))) (defcustom pc-bufsw-keys-enable nil "Deprecated.  Instead customize `pc-bufsw' to turn it on or\n     call (pc-bufsw t) in Emacs ini file." :group 'pc-bufsw :type 'boolean :set-after '(pc-bufsw-keys) :set (lambda (symbol value) (set-default symbol value) (when value (message "pc-bufsw-keys-enable is deprecated. Customize pc-bufsw instead.") (pc-bufsw value)))) (defcustom pc-bufsw-quit-time 3 "Quit buffer switching after the given time in seconds.  If\nthere is no input during this interval the last choosen buffer\nbecomes current." :group 'pc-bufsw :type 'number) (defcustom pc-bufsw-wrap-index t "Wrap to the other end of the buffer list when attempting to navigate past its edge." :group 'pc-bufsw :type 'boolean :version "3.1") (defcustom pc-bufsw-other-windows nil "Defines how to treat other windows and their buffers." :type '(radio (const :tag "All Buffers" :doc "Use all buffers for switching including buffers from other windows." nil) (const :tag "Skip" :doc "Switch only to buffers not already shown in other windows." :skip)) :group 'pc-bufsw :version "3.2") (defcustom pc-bufsw-decorator-left "<" "Defines which character is used when decorating the selected buffer.\n\nFormatting can be added using text properties, e.g.:\n(setq pc-bufsw-decorator-left (propertize \"[\" \\='face \\='bold))" :type 'string) (defcustom pc-bufsw-decorator-right ">" "Defines which character is used when decorating the selected buffer.\n\nFormatting can be added using text properties, e.g.:\n(setq pc-bufsw-decorator-right (propertize \"]\" \\='face \\='bold))" :type 'string) (defcustom pc-bufsw-buffer-face nil "If non-nil, use this face for buffer names." :type '(choice (const nil) face)) (defcustom pc-bufsw-window-buffer-face nil "If non-nil, use this face for names of buffers previously displayed in the current window." :type '(choice (const nil) face)) (defcustom pc-bufsw-frame-buffer-face nil "If non-nil, use this face for names of buffers previously displayed in the current frame." :type '(choice (const nil) face)) (defcustom pc-bufsw-selected-buffer-face nil "If non-nil, use this face for selected buffer names." :type '(choice (const nil) face)) (defcustom pc-bufsw-prefer-current-window nil "Prefer buffers previously displayed in the current window when building buffer list." :type 'boolean) (defcustom pc-bufsw-prefer-current-frame nil "Prefer buffers previously displayed in the current frame when building buffer list." :type 'boolean) (pc-bufsw-update-keybindings) (when pc-bufsw-keys-enable (pc-bufsw t)))

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "pc-bufsw" '("pc-bufsw--")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; pc-bufsw-autoloads.el ends here
