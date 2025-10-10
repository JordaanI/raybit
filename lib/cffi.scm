;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;                                                                                        ;;;
;;;     __  .______     ______   .__   __.    .______    __    _______.                    ;;;
;;;    |  | |   _  \   /  __  \  |  \ |  |    |   _  \  |  |  /  _____|        _____       ;;;
;;;    |  | |  |_)  | |  |  |  | |   \|  |    |  |_)  | |  | |  |  __      ^..^     \9     ;;;
;;;    |  | |      /  |  |  |  | |  . `  |    |   ___/  |  | |  | |_ |     (oo)_____/      ;;;
;;;    |  | |  |\  \  |  `--'  | |  |\   |    |  |      |  | |  |__| |        WW  WW       ;;;
;;;    |__| | _| `._|  \______/  |__| \__|    | _|      |__|  \______|                     ;;;
;;;                                                                                        ;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;
;; Author: Ivan Jordaan
;; Date: 2025-10-07
;; email: ivan@axoinvent.com
;; Project: c foreign function interfacing with raylib
;;

(c-declare "#include <raylib.h>")


(define-macro (define-c-lambda name types return)

  (define (gambitify-string str)
    (let ((strl (string->list str)))
      (list->string
       (cons (char-downcase (car strl))
             (let loop ((strl (cdr strl)) (in-capital? #f))
               (if (null? strl) (list)
                   (let ((fc (car strl)))
                     (cond
                      ((and
                        in-capital?
                        (or
                         (char-upper-case? fc)
                         (char-numeric? fc)))
                       (cons (char-downcase fc) (loop (cdr strl) #t)))
                      ((or
                        (char-upper-case? fc)
                        (char-numeric? fc))
                       (cons #\- (cons (char-downcase fc) (loop (cdr strl) #t))))
                      (#t (cons fc (loop (cdr strl) #f)))))))))))

  `(define ,(string->symbol (gambitify-string name))
     (c-lambda ,types ,return ,name)))

(define-macro (define-const symbol)
  (let* ((str (##symbol->string symbol))
         (ref (##string-append "___return (" str ");")))
    `(define ,symbol
       ((c-lambda () int ,ref)))))

(define-macro (define-c-type struct)
  `(c-define-type ,(##string->symbol struct) (struct ,struct)))

(define-macro (define-make-struct struct types)
  (let ((fun-name (string->symbol (string-append "make-" struct)))
        (c-code (string-append
                 struct
                 " ret = ("
                 struct
                 "){"
                 (let loop ((i 1))
                   (if (> i (length types))
                       ""
                       (string-append
                        (if (= i 1) "" ", ")
                        "___arg" (number->string i)
                        (loop (+ i 1)))))
                 "}; ___return(ret);")))
    `(define ,fun-name
       (c-lambda ,types ,struct ,c-code))))
