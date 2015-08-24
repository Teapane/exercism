(ns anagram
  (:require [clojure.string :refer [lower-case]]))

(defn- anagram? [word  c]
    (let [word (lower-case word)
                  c (lower-case c)]
          (and (= (sort word) (sort c))
                        (not= word c))))

(defn anagrams-for [word coll]
    (filter (partial anagram? word) coll))
