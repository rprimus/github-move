(defun ask-number ()
  (format t "Please enter a number: ")
  (let ((val (read)))
    (if (numberp val)
        val
        (ask-number))))

(defvar fred)

(setf fred
      #'(lambda (n)
          (format t "you entered ~A.~%" n)))


(defun enigma (x)
  (and (not (null x))
       (or (null (car x))
           (enigma (cdr x)))))

(defun mystery (x y)
  (if (null y)
      nil
      (if (eql (car y) x)
          0
          (let ((z (mystery x (cdr y))))
            (and z (+ z 1))))))
