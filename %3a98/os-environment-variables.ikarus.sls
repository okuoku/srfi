#!r6rs
(library (srfi :98 os-environment-variables)
  (export
    (rename (getenv get-environment-variable)
            (environ get-environment-variables)))
  (import
    (only (ikarus) getenv environ)))
