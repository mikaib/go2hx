package stdgo._internal.sync;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.internal.race.Race;
import stdgo._internal.runtime.Runtime;
function _loadPoolChainElt(_pp:stdgo.Ref<stdgo.Ref<stdgo._internal.sync.Sync_T_poolChainElt.T_poolChainElt>>):stdgo.Ref<stdgo._internal.sync.Sync_T_poolChainElt.T_poolChainElt> {
        return (stdgo._internal.sync.atomic_.Atomic__loadPointer.loadPointer(((stdgo.Go.toInterface(_pp) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind) })) : stdgo.Pointer<stdgo._internal.unsafe.Unsafe.UnsafePointer>)).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.Sync_T_poolChainElt.T_poolChainElt", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "_poolDequeue", embedded : true, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.Sync_T_poolDequeue.T_poolDequeue", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "_headTail", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint64_kind) }, optional : false }, { name : "_vals", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.Sync_T_eface.T_eface", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "_typ", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind) }, optional : false }, { name : "_val", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }]), false, { get : () -> null }) }, optional : false }, { name : "_next", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.Sync_T_poolChainElt.T_poolChainElt", [], stdgo._internal.internal.reflect.Reflect.GoType.invalidType, false, { get : () -> null }) }) }, optional : false }, { name : "_prev", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.Sync_T_poolChainElt.T_poolChainElt", [], stdgo._internal.internal.reflect.Reflect.GoType.invalidType, false, { get : () -> null }) }) }, optional : false }]), false, { get : () -> null }) })) : stdgo.Ref<stdgo._internal.sync.Sync_T_poolChainElt.T_poolChainElt>);
    }
