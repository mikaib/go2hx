package stdgo._internal.reflect;
function new_(_typ:stdgo._internal.reflect.Reflect_Type_.Type_):stdgo._internal.reflect.Reflect_Value.Value {
        var value = stdgo._internal.internal.reflect.Reflect.defaultValue(_typ);
        var ptr = new Pointer(() -> value, x -> value = x);
        return new stdgo._internal.reflect.Reflect_Value.Value(new stdgo.AnyInterface(ptr, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> @:privateAccess (_typ : Dynamic)._common() }))));
    }
