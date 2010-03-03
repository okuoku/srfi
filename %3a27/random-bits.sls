#!r6rs
;; Copyright 2009 Derick Eddington.  My MIT-style license is in the file named
;; LICENSE from the original collection this file is distributed with.

(library (srfi :27 random-bits)
  (export random-integer
          random-real
          default-random-source
          make-random-source
          random-source?
          random-source-state-ref
          random-source-state-set!
          random-source-randomize!
          random-source-pseudo-randomize!
          random-source-make-integers
          random-source-make-reals)
  
  (import (rnrs)
          (rnrs r5rs)
          (only (srfi :19 time) time-nanosecond current-time)
          (srfi :23 error tricks)
          (srfi private include)
          )
    
   (SRFI-23-error->R6RS "(library (srfi :27 random-bits))"
    (include/resolve ("srfi" "%3a27") "random.ss"))
  )
