
(import (scheme base)
        (scheme process-context)
        (scheme write)
        (scheme file)
        (brainfuck compiler))

(let ((cl (command-line)))
  (if (< 1 (length cl))
      ((call-with-input-file (cadr cl) brainfuck->procedure))
      (begin (display "Usage: ")
             (display (car cl))
             (display " source-file"))))
