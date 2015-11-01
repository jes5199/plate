(ns alias
    (:require [clojure.java.io :as io]
              [joplin.repl :as repl]))

(defn load-config []
  (repl/load-config "db/joplin.edn"))

; from https://github.com/juxt/joplin/blob/master/example/src/alias.clj#L14
(defn migrate [env & [db]]
  (let [conf (load-config)]
    (if db
      (repl/migrate conf (keyword env) (keyword db))
      (repl/migrate conf (keyword env))))
      (System/exit 0))

(defn seed [env & [db]]
    (let [conf (load-config)]
      (if db
        (repl/seed conf (keyword env) (keyword db))
        (repl/seed conf (keyword env))))
    (System/exit 0))

(defn rollback [env & [db num]]
  (let [conf (load-config)]
    (when (and db num)
      (repl/rollback conf
                     (keyword env) (keyword db)
                     (Long/parseLong num))))
  (System/exit 0))

