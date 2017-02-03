REPOSITORY_BASE=$(git rev-parse --show-toplevel)
prove -r $@ -I $REPOSITORY_BASE/lib $REPOSITORY_BASE/t
