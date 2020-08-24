package led;

#if macro
import haxe.macro.Context;
import haxe.macro.Expr;
using haxe.macro.Tools;
#end

class Project {
	public var name : String;
	var _untypedLevels : Array<led.Level>;

	public function new() {
	}

	/**
		Replace current project using another project-JSON data. WARNING: types and classes are generated at compilation-time, not at runtime.
	**/
	public function parseJson(jsonString:String) {
		var json : led.JsonTypes.ProjectJson = haxe.Json.parse(jsonString);
		name = json.name;

		_untypedLevels = [];
		for(json in json.levels)
			_untypedLevels.push( _instanciateLevel(json) );
		trace(_untypedLevels);
	}

	function _instanciateLevel(json:led.JsonTypes.LevelJson) {
		return null; // overriden by Macros.hx
	}

	public static function build(projectFilePath:String) {
		#if !macro
		throw "Should only be used in macros";
		#else
		return Macros.buildTypes(projectFilePath);
		#end
	}
}
