
psa: src/Main.purs
	psa --censor-codes=ImplicitImport,UnusedExplicitImport \
	    'src/**/*.purs' \
	    'bower_components/purescript-*/src/**/*.purs'

deploy: src/Main.purs
	pulp build --to localScripts/main.js # -- --censor-codes=ImplicitImport

output: Main.purs
	psc Main.purs 'src/**/.purs' 'bower_components/purescript-*/src/**/*.purs'

