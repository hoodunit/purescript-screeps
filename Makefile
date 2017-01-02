
deploy: src/Main.purs
	pulp build --to localScripts/main.js #-- --censor-codes=ImplicitImport

output: Main.purs
	psc Main.purs 'src/**/.purs' 'dependencies/purescript-*/src/**/*.purs'

