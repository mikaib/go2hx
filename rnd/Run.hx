package;

function main() {
	Main.exportBool = true;
	Main.init(["-ident", "./rnd"]);

	var path = Main.exportPaths[0];
	path = StringTools.replace(path, "/", ".");
	var command = 'haxe -cp golibs -main $path --interp';
	// command += ' --macro stdgo.internal.GoGen.build()';
	trace(command);
	Sys.command(command);

	Sys.println("\n~~~~~~~~~~~~expected~~~~~~~~~~~~");
	Sys.command("go run ./rnd");
}
