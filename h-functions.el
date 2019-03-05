;; -*- lexical-binding: t -*-
(provide 'h-functions)

(defun h-add-rule-func (&optional rules)
  (lambda (rule)
    (if (null rule) rules
        (progn (setq rules `(,@rules ,rule)) (h-add-rule-func rules)))))

(defun h-create-or-rule (face &rest patterns)
  (setq patterns (regexp-opt (car patterns)))
  (setq patterns (concat "\\<" patterns "\\>" ))
  `(,patterns . ,face))


(defun h-create-group-rule (font-face group-num &rest regexp-string)
  (let ((patterns))
    (unless (not (null group-num)) (setq group-num 0))
    (setq patterns (mapconcat (lam el => (concat "\\(" el "\\)")) (car regexp-string) ""))
    (setq patterns (concat "\\<" patterns "\\>"))
    `(,patterns ,group-num ,font-face)
  )
)

(defun h-add-rule (mode pattern face &optional group)
  (let ((rule))
    (if (null group)
      (setq rule `(,pattern . ,face))
      (setq rule `(,pattern ,group ,face))
    )
    (font-lock-add-keywords mode `(,rule))
  )
)

(defun h-remove-rule (mode pattern face &optional group)
  (let ((rule))
    (if (null group)
      (setq rule `(,pattern . ,face))
      (setq rule `(,pattern ,group ,face))
    )
    (font-lock-remove-keywords mode `(,rule))
  )
)
