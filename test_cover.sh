REPOSITORY_BASE=$(git rev-parse --show-toplevel)

PERL5OPT="$PERL5OPT  -MDevel::Cover" prove -r -v $@ -I $REPOSITORY_BASE/lib $REPOSITORY_BASE/t

mkdir -p $REPOSITORY_BASE/cover_db
cover -outputdir $REPOSITORY_BASE/cover -report html
