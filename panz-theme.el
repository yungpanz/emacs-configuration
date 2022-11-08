;;; panz-theme.el

;; Author: Paolo Anzani <p.anzani@campus.unimib.it>

;;; Code =======================================================================

(deftheme panz
  "Melon background theme.")

(custom-theme-set-faces
 'panz
 '(default ((t (:background "honeydew"))))
 '(font-lock-constant-face ((t (:foreground "black" :bold t))))
 '(font-lock-variable-name-face ((t (:foreground "red" :bold t))))
 '(region ((t (:inherit nil :background "pale green"))))
 ;; blank for future
 )

(provide-theme 'panz)
