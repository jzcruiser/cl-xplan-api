#|
This file is part of CL-XPLAN-API, the Lisp XPLAN API Library

Copyright (C) 2017 Kieran Grant
This library is free software; you can redistribute it and/or
modify it under the terms of the Lisp Lesser General Public License
(http://opensource.franz.com/preamble.html), known as the LLGPL.

This library is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
Lisp Lesser GNU General Public License for more details.

File: src/api/case_manager/savings.lisp
Description: /case_manager/savings API Functions
|#

(in-package :cl-xplan-api/api)

;;; case_manager/savings

;; case_manager/savings - GET /resourceful/case_manager/:container_id/savings
(define-entrypoint case_manager/savings :get (container_id) ()
		   :resource (format NIL "/case_manager/~A/savings" container_id))

;; case_manager/savings - POST /resourceful/case_manager/:container_id/savings
(define-entrypoint case_manager/savings :post
  (container_id)
  (linked_obj_id
   ((benchmarkable nil benchmarkable-p) :cond benchmarkable-p :value (if benchmarkable 1 0)))
  :resource (format NIL "/case_manager/~A/savings" container_id))

;; case_manager/savings - DELETE /resourceful/case_manager/:container_id/savings/:linked_obj_id
(define-entrypoint case_manager/savings :delete (container_id linked_obj_id) ()
		   :resource (format nil "/case_manager/~A/savings/~A" container_id linked_obj_id))
