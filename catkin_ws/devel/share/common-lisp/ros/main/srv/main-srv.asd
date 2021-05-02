
(cl:in-package :asdf)

(defsystem "main-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :main-msg
)
  :components ((:file "_package")
    (:file "FieldData" :depends-on ("_package_FieldData"))
    (:file "_package_FieldData" :depends-on ("_package"))
  ))