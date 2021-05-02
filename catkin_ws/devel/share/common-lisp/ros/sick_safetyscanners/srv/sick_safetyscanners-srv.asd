
(cl:in-package :asdf)

(defsystem "sick_safetyscanners-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :sick_safetyscanners-msg
)
  :components ((:file "_package")
    (:file "FieldData" :depends-on ("_package_FieldData"))
    (:file "_package_FieldData" :depends-on ("_package"))
  ))