
(cl:in-package :asdf)

(defsystem "wam_node-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "HandPos" :depends-on ("_package_HandPos"))
    (:file "_package_HandPos" :depends-on ("_package"))
  ))