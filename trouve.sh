find -name "*.[ch]" -type f -exec grep -i --color $1 {} -Hn \;; 

