;; pg - ansi common lisp (pg 38)
(defun uncompress (lst)
  (if (null lst)
      nil
      (let ((elt (car lst))
            (rest (uncompress (cdr lst))))
        (if (consp elt)
            (append (apply #'list-of elt)
                    rest)
            (cons elt rest)))))

(defun list-of (n elt)
  (if (zerop n)
      nil
      (cons elt (list-of (- n 1) elt))))



;; rainer joswig:
(defun uncompress (list)
  (mapcan #'expand-item list))

(defun expand-item (item)
  (typecase item
    (atom (list item))
    (cons (destructuring-bind (n element) item
            (loop repeat n collect element)))))
