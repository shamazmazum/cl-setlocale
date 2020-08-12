(defsystem :cl-setlocale
  :name :cl-setlocale
  :version "0.1"
  :author "Vasily Postnicov <shamaz.mazum@gmail.com>"
  :description "FFI to setlocale and ncurses locale helper"
  :license "2-clause BSD"
  :defsystem-depends-on ("cffi-grovel")
  :serial t
  :components ((:file "src/package")
               #-win32
               (:cffi-grovel-file "src/constants")
               #+win32
               (:file "src/constants-win32")
               (:file "src/setlocale"))
  :depends-on (:cffi))
