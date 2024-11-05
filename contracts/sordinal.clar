(define-public (sordinals--inscribe-single
    (sordinals--recipient principal) ;; required
    (sordinals--parent-id (buff 32)) ;; optional, if set incorrectly - tx is marked invalid
    (sordinals--inscribe-events-count uint) ;; optional, if set should be > 0, otherwise tx is invalid
    (sordinals--metadata (buff 1048576)) ;; optional
    (sordinals--encoding (buff 7)) ;; optional
    (sordinals--content-type (buff 100)) ;; optional
    (sordinals--data (buff 1048576)) ;; required
  )
    (ok true)
)

(define-public (sordinals--inscribe-multiple
    (sordinals--recipients (list 1000 principal)) ;; required
    (sordinals--parent-id (buff 32)) ;; optional, if set incorrectly - tx is marked invalid
    (sordinals--metadata (buff 1048576)) ;; optional
    (sordinals--encoding (buff 7)) ;; optional
    (sordinals--content-types (list 1000 (buff 100))) ;; optional
    (sordinals--data-lengths (list 1000 uint)) ;; required, length must be equal to recipients array length
    (sordinals--data (buff 1048576)) ;; required
  )
    (ok true)
)