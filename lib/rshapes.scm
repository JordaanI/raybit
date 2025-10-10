
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
;; Date: 2025-08-29
;; email: ivan@axoinvent.com
;; Project:
;;

;; Lines
(define-c-lambda "DrawLine" (int int int int Color) void)

;; Circles
(define-c-lambda "DrawCircle" (int int float Color) void)
(define-c-lambda "DrawCircleV" (Vector2 float Color) void)

;; Text
(define-c-lambda "DrawText" (UTF-8-string int int int Color) void)

;; Rectangle
(define-c-lambda "DrawRectangle" (int int int int Color) void)
(define-c-lambda "DrawRectangleLines" (int int int int Color) void)
(define-c-lambda "DrawRectangleRec" (Rectangle Color) void)

;; Triangle
(define-c-lambda "DrawTriangle" (Vector2 Vector2 Vector2 Color) void)
