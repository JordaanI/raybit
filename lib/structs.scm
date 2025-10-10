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
;; Project:
;;

;; From 'https://github.com/raysan5/raylib/blob/master/src/raylib.h'
;; Note some are not created directly and are created by some function, see below

(define-c-type "Vector2")
(define-make-struct "Vector2" (float float))
(define-c-type "Vector3")
(define-make-struct "Vector3" (float float float))
(define-c-type "Vector4")
(define-make-struct "Vector4" (float float float float))
(define-c-type "Matrix")
;; TODO add Matrix make
(define-c-type "Color")
(define-make-struct "Color" (unsigned-int8 unsigned-int8 unsigned-int8 unsigned-int8))
(define-c-type "Rectangle")
(define-make-struct "Rectangle" (float float float float))

(define-c-type "Image")
(define-c-type "Texture")
(define-c-type "RenderTexture")
(define-c-type "NPatchInfo")
(define-c-type "GlyphInfo")
(define-c-type "Font")

(define-c-type "Camera2D")
(define-c-type "Camera3D")

(define-c-type "Shader")
(define-c-type "MaterialMap")
(define-c-type "Material")
(define-c-type "Mesh")
(define-c-type "Model")
(define-c-type "ModelAnimation")
(define-c-type "Transform")
(define-c-type "BoneInfo")
(define-c-type "Ray")
(define-c-type "RayCollision")
(define-c-type "BoundingBox")

(define-c-type "Wave")
(define-c-type "AudioStream")
(define-c-type "Sound")
(define-c-type "Music")

(define-c-type "VrDeviceInfo")
(define-c-type "VrStereoConfig")

(define-c-type "FilePathList")

(define-c-type "AutomationEvent")
(define-c-type "AutomationEventList")
