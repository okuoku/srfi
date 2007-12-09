(library (srfi eager-comprehensions)
  (export
    do-ec list-ec append-ec string-ec string-append-ec vector-ec 
    vector-of-length-ec sum-ec product-ec min-ec max-ec any?-ec 
    every?-ec first-ec last-ec fold-ec fold3-ec 
    : :list :string :vector :integers :range :real-range :char-range 
    :port :dispatched :do :let :parallel :while :until
    :-dispatch-ref :-dispatch-set! make-initial-:-dispatch 
    dispatch-union :generator-proc)
  (import
    (except (rnrs) error)
    (rnrs r5rs)
    (only (ikarus) make-parameter parameterize)
    (prefix (srfi error-reporting) ER:)
    (srfi include-resolve))
  
  (define (error . args)
    (parameterize ([ER:error-who 
                    '(library (srfi eager-comprehensions/42))])
      (apply ER:error args)))
  
  (include/resolve ("srfi" "eager-comprehensions") "ec.scm")  
)
