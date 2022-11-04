## code to prepare `corenames` dataset goes here

## This script is not run automatically as part
## of the devtools-loading process, you will have
## to run it manually whenever the data changes.

## You will hoewever generally run the script from
## a devtools session, which has the package
## directory as working directory. It therefore
## makes sense to use the relative path below.

corenames = readLines("data-raw/corenames.txt")
corenames = sub("^ *", "", corenames)
corenames = strsplit(corenames, " ")
first = sapply(corenames, `[`, 1)
last  = sapply(corenames, function(x) paste(x[-1], collapse = " "))
corenames = data.frame(First = first, Last = last, stringsAsFactors = FALSE)

## Remove quotation marks around name (object ref, not object name)
## If you're feeling lucky, add 'overwrite = TRUE'
usethis::use_data(corenames)
