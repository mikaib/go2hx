package _internal.runtime_test;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.unsafe.Unsafe;
function _allocMyNode(_data:stdgo.GoInt):stdgo.Ref<_internal.runtime_test.Runtime_test_MyNode.MyNode> {
        var _n = (stdgo._internal.runtime.Runtime_persistentAlloc.persistentAlloc(stdgo._internal.unsafe.Unsafe_sizeof.sizeof(stdgo.Go.toInterface((new _internal.runtime_test.Runtime_test_MyNode.MyNode() : _internal.runtime_test.Runtime_test_MyNode.MyNode)))).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("_internal.runtime_test.Runtime_test_MyNode.MyNode", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "lfnode", embedded : true, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.runtime.Runtime_LFNode.LFNode", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "next", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint64_kind) }, optional : false }, { name : "pushcnt", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false }]), false, { get : () -> null }) }, optional : false }, { name : "_data", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind) }, optional : false }]), false, { get : () -> null }) })) : stdgo.Ref<_internal.runtime_test.Runtime_test_MyNode.MyNode>);
        stdgo._internal.runtime.Runtime_lfnodeValidate.lfnodeValidate((stdgo.Go.setRef(_n.lfnode) : stdgo.Ref<stdgo._internal.runtime.Runtime_LFNode.LFNode>));
        _n._data = _data;
        return _n;
    }
