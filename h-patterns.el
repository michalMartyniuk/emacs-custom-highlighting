(provide 'h-patterns)

(defun v-h-js-patterns ()
 `(
    (js-paren . ("(" ")" "[" "]"))
    (js-args . ("(" ".*" ")"))
    (js-functions . ("function" "while" "for"))
    (js-function-name . ("function\s+" "[a-zA-Z]+"))
    (js-keywords . ("const" "let" "try" "catch" "import" "export" "break" "continue"))
  )
)





