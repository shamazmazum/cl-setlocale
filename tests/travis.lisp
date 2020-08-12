(defun do-all()
  (ql:quickload :cl-setlocale/tests)
  (uiop:quit
   (if (uiop:symbol-call :cl-setlocale-tests :run-tests)
       0 1)))

(do-all)
