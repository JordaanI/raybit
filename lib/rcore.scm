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
;; Project: rcore module bindings
;;

;; Window and Context Related
(define-c-lambda "InitWindow" (int int UTF-8-string) void)
(define-c-lambda "CloseWindow" () void)
(define-c-lambda "WindowShouldClose" () bool)
(define-c-lambda "IsWindowReady" () bool)
(define-c-lambda "IsWindowFullscreen" () bool)
(define-c-lambda "IsWindowHidden" () bool)
(define-c-lambda "IsWindowMinimized" () bool)
(define-c-lambda "IsWindowMaximized" () bool)
(define-c-lambda "IsWindowHidden" () bool)
(define-c-lambda "IsWindowResized" () bool)
(define-c-lambda "IsWindowState" (unsigned-int8) bool)

;; Drawing Related
(define-c-lambda "BeginDrawing" () void)
(define-c-lambda "EndDrawing" () void)
(define-c-lambda "ClearBackground" (Color) void)
(define-c-lambda "BeginMode2D" (Camera2D) void)
(define-c-lambda "EndMode2D" () void)

;; Timing
(define-c-lambda "SetTargetFPS" (int) void)
(define-c-lambda "GetFrameTime" () float)

;; Input Handling =====

;; KeyBoard
(define-c-lambda "IsKeyDown" (int) bool)
(define-c-lambda "IsKeyPressed" (int) bool)

;; Mouse
(define-c-lambda "GetMousePosition" () Vector2)
(define-c-lambda "IsMouseButtonPressed" (int) bool)
(define-c-lambda "IsMouseButtonDown" (int) bool)
