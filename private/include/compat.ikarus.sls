#!r6rs
;; Copyright 2009 Derick Eddington.  My MIT-style license is in the file named
;; LICENSE from the original collection this file is distributed with.

(library (srfi private include compat)
  (export
    search-paths)
  (import
    (rnrs base)
    (only (ikarus) library-path))

  (define (search-paths)
    (library-path))
)
