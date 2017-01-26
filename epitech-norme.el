;;
;; epitech-norme.el for  in /home/zeng_d/.emacs.d
;;
;; Made by David Zeng
;; Login   <zeng_d@epitech.net>
;;
;; Started on  Fri Jun 10 05:42:35 2016 David Zeng
;; Last update Thu Dec  1 13:23:44 2016 David Zeng
;;

;; flycheck epitech-norme
(flycheck-define-checker epitech-norme
  "An Epitech norme checker."
  :command ("norme.py" source)
  :error-patterns
  ((info line-start (file-name) ":" line ":" (message)
            line-end))
  :modes (c-mode)
  :next-checkers ((warning . c/c++-clang)))
(add-to-list 'flycheck-checkers 'epitech-norme)
(add-hook 'c-mode-hook '(lambda () (setq flycheck-checker 'epitech-norme)))
