package std;

using Pointer.Tools;

class Flag {
    public static function args():Array<String> {
        return [];
    }
    public static function parse() {}
    public static function string(flag:String,value:String,desc:String):Pointer<String> {
        return "".pointer();
    }
    public static function int(flag:String,value:Int,desc:String):Pointer<Int> {
        return 0.pointer();
    }
    public static function bool(flag:String,value:Bool,desc:String):Pointer<Bool> {
        return true.pointer();
    }
    //Pointer ref of flag
    public static function stringVar(p:Any,flag:String,value:String,desc:String) {

    }
    public static function intVar(p:Any,flag:String,value:Int,desc:String) {

    }
    public static function boolVar(p:Any,flag:String,value:Bool,desc:String) {

    }
}