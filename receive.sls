#!r6rs
(library (xitomatl srfi receive)
  (export receive)
  (import (rnrs))
  
  (define-syntax receive
    (syntax-rules ()
      [(_ formals expression b b* ...)
       (call-with-values 
         (lambda () expression)
         (lambda formals b b* ...))]))
  
)
