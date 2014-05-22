(ns bst)

(defn value [node] (first node))
(defn left [node] (second node))
(defn right [node] (last node))
(defn singleton [n] [n nil nil])

(defn insert [v node]
  (if
    (empty? node)
    (singleton v)
    (let [var (value node)]
      (if
        (>= var v)
        [var (insert v (left node)) (right node)]
        [var (left node) (insert v (right node))]))))

(defn canidate [i<+]
  (reduce #(insert %2 %1) nil i<+))

(defn finalist [node]
  (if
    (empty? node)
    node
    (concat (to-list (left node)) [(value node)] (to-list (right node)))))
