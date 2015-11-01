(defproject plate "0.1.0-SNAPSHOT"
  :description "FIXME: write description"
  :url "http://example.com/FIXME"
  :license {:name "Eclipse Public License"
            :url "http://www.eclipse.org/legal/epl-v10.html"}
  :dependencies [[org.clojure/clojure "1.6.0"]
                 [org.postgresql/postgresql "9.4-1201-jdbc4"]
                 [joplin.core "0.3.4"]
                 [joplin.jdbc "0.3.4"]]
  :aliases {"migrate"  ["run" "-m" "alias/migrate"]
            "seed"     ["run" "-m" "alias/seed"]
            "rollback" ["run" "-m" "alias/rollback"]})
