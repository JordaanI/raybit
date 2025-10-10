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
;; Date: 2025-09-14
;; email: ivan@axoinvent.com
;; Project:
;;

(define-c-lambda "InitAudioDevice" () void)
(define-c-lambda "CloseAudioDevice" () void)

(define-c-lambda "LoadSound" (UTF-8-string) Sound)
(define-c-lambda "UnloadSound" (Sound) void)
(define-c-lambda "PlaySound" (Sound) void)


(define-c-lambda "LoadMusicStream" (UTF-8-string) Music)
(define-c-lambda "UnloadMusicStream" (Music) void)
(define-c-lambda "PlayMusicStream" (Music) void)
(define-c-lambda "StopMusicStream" (Music) void)
(define-c-lambda "UpdateMusicStream" (Music) void)
(define-c-lambda "GetMusicTimeLength" (Music) float)
(define-c-lambda "GetMusicTimePlayed" (Music) float)
(define-c-lambda "IsMusicStreamPlaying" (Music) bool)
(define-c-lambda "SeekMusicStream" (Music float) void)
