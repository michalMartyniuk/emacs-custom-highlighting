(provide 'h-faces)

(defun h-get-face (face-color)
  (funcall (get-list-value-func (v-faces)) face-color)
)

(defun h-faces ()
  `(
     (blue . font-lock-builtin-face)
     (aqua . font-lock-comment-face)
     (dark-pink . font-lock-constant-face)
     (bold-pink . font-lock-function-name-face)
     (bold-blue . font-lock-keyword-face)
     (pink . font-lock-preprocessor-face)
     (dark-green . font-lock-string-face)
     (bold-red . font-lock-type-face)
     (purple-blue . font-lock-variable-name-face)
     (orange . font-lock-warning-face)
   )
)

(defun h-display-faces ()
  '(
      ;; red
      (bold-red . outline-5)

      ;; green
      (light-green . message-mml)
      (bold-light-green . git-gutter+-added)
      (darker-green . custom-state)
      (light-green . compilation-info)

      ;; blue

      (very-light-blue . message-separator)
      (medium-light-blue . message-header-xheader)
      (bold-lightblue . custom-face-tag)

      ;; orange
      (orange-yellow . helm-buffer-archive)
      (underlined-orange . helm-M-x-key)
      (orange . git-commit-nonempty-second-line)
      (orange-red . helm-bookmark-addressbook)
      (bold-orange . flycheck-fringe-warning)
      (medium-orange . dired-warning)

      ;; yellow
      (bold-yellow . message-header-newsgroups)
      (yellow . anzu-replace-to)

      ;; lemon
      (bold-light-lemon . message-header-to)
      (light-lemon . message-header-subject)
      (lemon-txt-light-grey-bck . match)
      (bold-lemon . eldoc-highlight-function-argument)

      ;; pink
      (bold-pink . package-help-section-name)
      (pink-red . helm-ff-socket)
      (pink-red-2 . message-header-other)

      ;; grey
      (bold-grey . custom-documentation)
      (medium-grey . window-divider)
      (weak-grey . widget-inactive)
      (dark-weak-grey . window-divider-last-pixel)

      ;; white
      (white-grey . window-divider-first-pixel)
      (black-txt-white-bck . custom-button-mouse)
      (bold-grey-white . comint-highlight-input)
      (bright-white . diff-context)
   )
)
