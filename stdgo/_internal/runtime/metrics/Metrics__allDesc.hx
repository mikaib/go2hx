package stdgo._internal.runtime.metrics;
import stdgo._internal.runtime.Runtime;
var _allDesc : stdgo.Slice<stdgo._internal.runtime.metrics.Metrics_Description.Description> = (new stdgo.Slice<stdgo._internal.runtime.metrics.Metrics_Description.Description>(52, 52, ...[
({ name : ("/cgo/go-to-c-calls:calls" : stdgo.GoString), description : ("Count of calls made from Go to C by the current process." : stdgo.GoString), kind : (1 : stdgo._internal.runtime.metrics.Metrics_ValueKind.ValueKind), cumulative : true } : stdgo._internal.runtime.metrics.Metrics_Description.Description),
({ name : ("/cpu/classes/gc/mark/assist:cpu-seconds" : stdgo.GoString), description : ("Estimated total CPU time goroutines spent performing GC tasks to assist the GC and prevent it from falling behind the application. This metric is an overestimate, and not directly comparable to system CPU time measurements. Compare only with other /cpu/classes metrics." : stdgo.GoString), kind : (2 : stdgo._internal.runtime.metrics.Metrics_ValueKind.ValueKind), cumulative : true } : stdgo._internal.runtime.metrics.Metrics_Description.Description),
({ name : ("/cpu/classes/gc/mark/dedicated:cpu-seconds" : stdgo.GoString), description : ("Estimated total CPU time spent performing GC tasks on processors (as defined by GOMAXPROCS) dedicated to those tasks. This metric is an overestimate, and not directly comparable to system CPU time measurements. Compare only with other /cpu/classes metrics." : stdgo.GoString), kind : (2 : stdgo._internal.runtime.metrics.Metrics_ValueKind.ValueKind), cumulative : true } : stdgo._internal.runtime.metrics.Metrics_Description.Description),
({ name : ("/cpu/classes/gc/mark/idle:cpu-seconds" : stdgo.GoString), description : ("Estimated total CPU time spent performing GC tasks on spare CPU resources that the Go scheduler could not otherwise find a use for. This should be subtracted from the total GC CPU time to obtain a measure of compulsory GC CPU time. This metric is an overestimate, and not directly comparable to system CPU time measurements. Compare only with other /cpu/classes metrics." : stdgo.GoString), kind : (2 : stdgo._internal.runtime.metrics.Metrics_ValueKind.ValueKind), cumulative : true } : stdgo._internal.runtime.metrics.Metrics_Description.Description),
({ name : ("/cpu/classes/gc/pause:cpu-seconds" : stdgo.GoString), description : ("Estimated total CPU time spent with the application paused by the GC. Even if only one thread is running during the pause, this is computed as GOMAXPROCS times the pause latency because nothing else can be executing. This is the exact sum of samples in /gc/pause:seconds if each sample is multiplied by GOMAXPROCS at the time it is taken. This metric is an overestimate, and not directly comparable to system CPU time measurements. Compare only with other /cpu/classes metrics." : stdgo.GoString), kind : (2 : stdgo._internal.runtime.metrics.Metrics_ValueKind.ValueKind), cumulative : true } : stdgo._internal.runtime.metrics.Metrics_Description.Description),
({ name : ("/cpu/classes/gc/total:cpu-seconds" : stdgo.GoString), description : ("Estimated total CPU time spent performing GC tasks. This metric is an overestimate, and not directly comparable to system CPU time measurements. Compare only with other /cpu/classes metrics. Sum of all metrics in /cpu/classes/gc." : stdgo.GoString), kind : (2 : stdgo._internal.runtime.metrics.Metrics_ValueKind.ValueKind), cumulative : true } : stdgo._internal.runtime.metrics.Metrics_Description.Description),
({ name : ("/cpu/classes/idle:cpu-seconds" : stdgo.GoString), description : ("Estimated total available CPU time not spent executing any Go or Go runtime code. In other words, the part of /cpu/classes/total:cpu-seconds that was unused. This metric is an overestimate, and not directly comparable to system CPU time measurements. Compare only with other /cpu/classes metrics." : stdgo.GoString), kind : (2 : stdgo._internal.runtime.metrics.Metrics_ValueKind.ValueKind), cumulative : true } : stdgo._internal.runtime.metrics.Metrics_Description.Description),
({ name : ("/cpu/classes/scavenge/assist:cpu-seconds" : stdgo.GoString), description : ("Estimated total CPU time spent returning unused memory to the underlying platform in response eagerly in response to memory pressure. This metric is an overestimate, and not directly comparable to system CPU time measurements. Compare only with other /cpu/classes metrics." : stdgo.GoString), kind : (2 : stdgo._internal.runtime.metrics.Metrics_ValueKind.ValueKind), cumulative : true } : stdgo._internal.runtime.metrics.Metrics_Description.Description),
({ name : ("/cpu/classes/scavenge/background:cpu-seconds" : stdgo.GoString), description : ("Estimated total CPU time spent performing background tasks to return unused memory to the underlying platform. This metric is an overestimate, and not directly comparable to system CPU time measurements. Compare only with other /cpu/classes metrics." : stdgo.GoString), kind : (2 : stdgo._internal.runtime.metrics.Metrics_ValueKind.ValueKind), cumulative : true } : stdgo._internal.runtime.metrics.Metrics_Description.Description),
({ name : ("/cpu/classes/scavenge/total:cpu-seconds" : stdgo.GoString), description : ("Estimated total CPU time spent performing tasks that return unused memory to the underlying platform. This metric is an overestimate, and not directly comparable to system CPU time measurements. Compare only with other /cpu/classes metrics. Sum of all metrics in /cpu/classes/scavenge." : stdgo.GoString), kind : (2 : stdgo._internal.runtime.metrics.Metrics_ValueKind.ValueKind), cumulative : true } : stdgo._internal.runtime.metrics.Metrics_Description.Description),
({ name : ("/cpu/classes/total:cpu-seconds" : stdgo.GoString), description : ("Estimated total available CPU time for user Go code or the Go runtime, as defined by GOMAXPROCS. In other words, GOMAXPROCS integrated over the wall-clock duration this process has been executing for. This metric is an overestimate, and not directly comparable to system CPU time measurements. Compare only with other /cpu/classes metrics. Sum of all metrics in /cpu/classes." : stdgo.GoString), kind : (2 : stdgo._internal.runtime.metrics.Metrics_ValueKind.ValueKind), cumulative : true } : stdgo._internal.runtime.metrics.Metrics_Description.Description),
({ name : ("/cpu/classes/user:cpu-seconds" : stdgo.GoString), description : ("Estimated total CPU time spent running user Go code. This may also include some small amount of time spent in the Go runtime. This metric is an overestimate, and not directly comparable to system CPU time measurements. Compare only with other /cpu/classes metrics." : stdgo.GoString), kind : (2 : stdgo._internal.runtime.metrics.Metrics_ValueKind.ValueKind), cumulative : true } : stdgo._internal.runtime.metrics.Metrics_Description.Description),
({ name : ("/gc/cycles/automatic:gc-cycles" : stdgo.GoString), description : ("Count of completed GC cycles generated by the Go runtime." : stdgo.GoString), kind : (1 : stdgo._internal.runtime.metrics.Metrics_ValueKind.ValueKind), cumulative : true } : stdgo._internal.runtime.metrics.Metrics_Description.Description),
({ name : ("/gc/cycles/forced:gc-cycles" : stdgo.GoString), description : ("Count of completed GC cycles forced by the application." : stdgo.GoString), kind : (1 : stdgo._internal.runtime.metrics.Metrics_ValueKind.ValueKind), cumulative : true } : stdgo._internal.runtime.metrics.Metrics_Description.Description),
({ name : ("/gc/cycles/total:gc-cycles" : stdgo.GoString), description : ("Count of all completed GC cycles." : stdgo.GoString), kind : (1 : stdgo._internal.runtime.metrics.Metrics_ValueKind.ValueKind), cumulative : true } : stdgo._internal.runtime.metrics.Metrics_Description.Description),
({ name : ("/gc/gogc:percent" : stdgo.GoString), description : ("Heap size target percentage configured by the user, otherwise 100. This value is set by the GOGC environment variable, and the runtime/debug.SetGCPercent function." : stdgo.GoString), kind : (1 : stdgo._internal.runtime.metrics.Metrics_ValueKind.ValueKind) } : stdgo._internal.runtime.metrics.Metrics_Description.Description),
({ name : ("/gc/gomemlimit:bytes" : stdgo.GoString), description : ("Go runtime memory limit configured by the user, otherwise math.MaxInt64. This value is set by the GOMEMLIMIT environment variable, and the runtime/debug.SetMemoryLimit function." : stdgo.GoString), kind : (1 : stdgo._internal.runtime.metrics.Metrics_ValueKind.ValueKind) } : stdgo._internal.runtime.metrics.Metrics_Description.Description),
({ name : ("/gc/heap/allocs-by-size:bytes" : stdgo.GoString), description : ("Distribution of heap allocations by approximate size. Bucket counts increase monotonically. Note that this does not include tiny objects as defined by /gc/heap/tiny/allocs:objects, only tiny blocks." : stdgo.GoString), kind : (3 : stdgo._internal.runtime.metrics.Metrics_ValueKind.ValueKind), cumulative : true } : stdgo._internal.runtime.metrics.Metrics_Description.Description),
({ name : ("/gc/heap/allocs:bytes" : stdgo.GoString), description : ("Cumulative sum of memory allocated to the heap by the application." : stdgo.GoString), kind : (1 : stdgo._internal.runtime.metrics.Metrics_ValueKind.ValueKind), cumulative : true } : stdgo._internal.runtime.metrics.Metrics_Description.Description),
({ name : ("/gc/heap/allocs:objects" : stdgo.GoString), description : ("Cumulative count of heap allocations triggered by the application. Note that this does not include tiny objects as defined by /gc/heap/tiny/allocs:objects, only tiny blocks." : stdgo.GoString), kind : (1 : stdgo._internal.runtime.metrics.Metrics_ValueKind.ValueKind), cumulative : true } : stdgo._internal.runtime.metrics.Metrics_Description.Description),
({ name : ("/gc/heap/frees-by-size:bytes" : stdgo.GoString), description : ("Distribution of freed heap allocations by approximate size. Bucket counts increase monotonically. Note that this does not include tiny objects as defined by /gc/heap/tiny/allocs:objects, only tiny blocks." : stdgo.GoString), kind : (3 : stdgo._internal.runtime.metrics.Metrics_ValueKind.ValueKind), cumulative : true } : stdgo._internal.runtime.metrics.Metrics_Description.Description),
({ name : ("/gc/heap/frees:bytes" : stdgo.GoString), description : ("Cumulative sum of heap memory freed by the garbage collector." : stdgo.GoString), kind : (1 : stdgo._internal.runtime.metrics.Metrics_ValueKind.ValueKind), cumulative : true } : stdgo._internal.runtime.metrics.Metrics_Description.Description),
({ name : ("/gc/heap/frees:objects" : stdgo.GoString), description : ("Cumulative count of heap allocations whose storage was freed by the garbage collector. Note that this does not include tiny objects as defined by /gc/heap/tiny/allocs:objects, only tiny blocks." : stdgo.GoString), kind : (1 : stdgo._internal.runtime.metrics.Metrics_ValueKind.ValueKind), cumulative : true } : stdgo._internal.runtime.metrics.Metrics_Description.Description),
({ name : ("/gc/heap/goal:bytes" : stdgo.GoString), description : ("Heap size target for the end of the GC cycle." : stdgo.GoString), kind : (1 : stdgo._internal.runtime.metrics.Metrics_ValueKind.ValueKind) } : stdgo._internal.runtime.metrics.Metrics_Description.Description),
({ name : ("/gc/heap/live:bytes" : stdgo.GoString), description : ("Heap memory occupied by live objects that were marked by the previous GC." : stdgo.GoString), kind : (1 : stdgo._internal.runtime.metrics.Metrics_ValueKind.ValueKind) } : stdgo._internal.runtime.metrics.Metrics_Description.Description),
({ name : ("/gc/heap/objects:objects" : stdgo.GoString), description : ("Number of objects, live or unswept, occupying heap memory." : stdgo.GoString), kind : (1 : stdgo._internal.runtime.metrics.Metrics_ValueKind.ValueKind) } : stdgo._internal.runtime.metrics.Metrics_Description.Description),
({ name : ("/gc/heap/tiny/allocs:objects" : stdgo.GoString), description : ("Count of small allocations that are packed together into blocks. These allocations are counted separately from other allocations because each individual allocation is not tracked by the runtime, only their block. Each block is already accounted for in allocs-by-size and frees-by-size." : stdgo.GoString), kind : (1 : stdgo._internal.runtime.metrics.Metrics_ValueKind.ValueKind), cumulative : true } : stdgo._internal.runtime.metrics.Metrics_Description.Description),
({ name : ("/gc/limiter/last-enabled:gc-cycle" : stdgo.GoString), description : ("GC cycle the last time the GC CPU limiter was enabled. This metric is useful for diagnosing the root cause of an out-of-memory error, because the limiter trades memory for CPU time when the GC\'s CPU time gets too high. This is most likely to occur with use of SetMemoryLimit. The first GC cycle is cycle 1, so a value of 0 indicates that it was never enabled." : stdgo.GoString), kind : (1 : stdgo._internal.runtime.metrics.Metrics_ValueKind.ValueKind) } : stdgo._internal.runtime.metrics.Metrics_Description.Description),
({ name : ("/gc/pauses:seconds" : stdgo.GoString), description : ("Distribution of individual GC-related stop-the-world pause latencies. Bucket counts increase monotonically." : stdgo.GoString), kind : (3 : stdgo._internal.runtime.metrics.Metrics_ValueKind.ValueKind), cumulative : true } : stdgo._internal.runtime.metrics.Metrics_Description.Description),
({ name : ("/gc/scan/globals:bytes" : stdgo.GoString), description : ("The total amount of global variable space that is scannable." : stdgo.GoString), kind : (1 : stdgo._internal.runtime.metrics.Metrics_ValueKind.ValueKind) } : stdgo._internal.runtime.metrics.Metrics_Description.Description),
({ name : ("/gc/scan/heap:bytes" : stdgo.GoString), description : ("The total amount of heap space that is scannable." : stdgo.GoString), kind : (1 : stdgo._internal.runtime.metrics.Metrics_ValueKind.ValueKind) } : stdgo._internal.runtime.metrics.Metrics_Description.Description),
({ name : ("/gc/scan/stack:bytes" : stdgo.GoString), description : ("The number of bytes of stack that were scanned last GC cycle." : stdgo.GoString), kind : (1 : stdgo._internal.runtime.metrics.Metrics_ValueKind.ValueKind) } : stdgo._internal.runtime.metrics.Metrics_Description.Description),
({ name : ("/gc/scan/total:bytes" : stdgo.GoString), description : ("The total amount space that is scannable. Sum of all metrics in /gc/scan." : stdgo.GoString), kind : (1 : stdgo._internal.runtime.metrics.Metrics_ValueKind.ValueKind) } : stdgo._internal.runtime.metrics.Metrics_Description.Description),
({ name : ("/gc/stack/starting-size:bytes" : stdgo.GoString), description : ("The stack size of new goroutines." : stdgo.GoString), kind : (1 : stdgo._internal.runtime.metrics.Metrics_ValueKind.ValueKind), cumulative : false } : stdgo._internal.runtime.metrics.Metrics_Description.Description),
({ name : ("/memory/classes/heap/free:bytes" : stdgo.GoString), description : ("Memory that is completely free and eligible to be returned to the underlying system, but has not been. This metric is the runtime\'s estimate of free address space that is backed by physical memory." : stdgo.GoString), kind : (1 : stdgo._internal.runtime.metrics.Metrics_ValueKind.ValueKind) } : stdgo._internal.runtime.metrics.Metrics_Description.Description),
({ name : ("/memory/classes/heap/objects:bytes" : stdgo.GoString), description : ("Memory occupied by live objects and dead objects that have not yet been marked free by the garbage collector." : stdgo.GoString), kind : (1 : stdgo._internal.runtime.metrics.Metrics_ValueKind.ValueKind) } : stdgo._internal.runtime.metrics.Metrics_Description.Description),
({ name : ("/memory/classes/heap/released:bytes" : stdgo.GoString), description : ("Memory that is completely free and has been returned to the underlying system. This metric is the runtime\'s estimate of free address space that is still mapped into the process, but is not backed by physical memory." : stdgo.GoString), kind : (1 : stdgo._internal.runtime.metrics.Metrics_ValueKind.ValueKind) } : stdgo._internal.runtime.metrics.Metrics_Description.Description),
({ name : ("/memory/classes/heap/stacks:bytes" : stdgo.GoString), description : ("Memory allocated from the heap that is reserved for stack space, whether or not it is currently in-use. Currently, this represents all stack memory for goroutines. It also includes all OS thread stacks in non-cgo programs. Note that stacks may be allocated differently in the future, and this may change." : stdgo.GoString), kind : (1 : stdgo._internal.runtime.metrics.Metrics_ValueKind.ValueKind) } : stdgo._internal.runtime.metrics.Metrics_Description.Description),
({ name : ("/memory/classes/heap/unused:bytes" : stdgo.GoString), description : ("Memory that is reserved for heap objects but is not currently used to hold heap objects." : stdgo.GoString), kind : (1 : stdgo._internal.runtime.metrics.Metrics_ValueKind.ValueKind) } : stdgo._internal.runtime.metrics.Metrics_Description.Description),
({ name : ("/memory/classes/metadata/mcache/free:bytes" : stdgo.GoString), description : ("Memory that is reserved for runtime mcache structures, but not in-use." : stdgo.GoString), kind : (1 : stdgo._internal.runtime.metrics.Metrics_ValueKind.ValueKind) } : stdgo._internal.runtime.metrics.Metrics_Description.Description),
({ name : ("/memory/classes/metadata/mcache/inuse:bytes" : stdgo.GoString), description : ("Memory that is occupied by runtime mcache structures that are currently being used." : stdgo.GoString), kind : (1 : stdgo._internal.runtime.metrics.Metrics_ValueKind.ValueKind) } : stdgo._internal.runtime.metrics.Metrics_Description.Description),
({ name : ("/memory/classes/metadata/mspan/free:bytes" : stdgo.GoString), description : ("Memory that is reserved for runtime mspan structures, but not in-use." : stdgo.GoString), kind : (1 : stdgo._internal.runtime.metrics.Metrics_ValueKind.ValueKind) } : stdgo._internal.runtime.metrics.Metrics_Description.Description),
({ name : ("/memory/classes/metadata/mspan/inuse:bytes" : stdgo.GoString), description : ("Memory that is occupied by runtime mspan structures that are currently being used." : stdgo.GoString), kind : (1 : stdgo._internal.runtime.metrics.Metrics_ValueKind.ValueKind) } : stdgo._internal.runtime.metrics.Metrics_Description.Description),
({ name : ("/memory/classes/metadata/other:bytes" : stdgo.GoString), description : ("Memory that is reserved for or used to hold runtime metadata." : stdgo.GoString), kind : (1 : stdgo._internal.runtime.metrics.Metrics_ValueKind.ValueKind) } : stdgo._internal.runtime.metrics.Metrics_Description.Description),
({ name : ("/memory/classes/os-stacks:bytes" : stdgo.GoString), description : ("Stack memory allocated by the underlying operating system. In non-cgo programs this metric is currently zero. This may change in the future.In cgo programs this metric includes OS thread stacks allocated directly from the OS. Currently, this only accounts for one stack in c-shared and c-archive build modes, and other sources of stacks from the OS are not measured. This too may change in the future." : stdgo.GoString), kind : (1 : stdgo._internal.runtime.metrics.Metrics_ValueKind.ValueKind) } : stdgo._internal.runtime.metrics.Metrics_Description.Description),
({ name : ("/memory/classes/other:bytes" : stdgo.GoString), description : ("Memory used by execution trace buffers, structures for debugging the runtime, finalizer and profiler specials, and more." : stdgo.GoString), kind : (1 : stdgo._internal.runtime.metrics.Metrics_ValueKind.ValueKind) } : stdgo._internal.runtime.metrics.Metrics_Description.Description),
({ name : ("/memory/classes/profiling/buckets:bytes" : stdgo.GoString), description : ("Memory that is used by the stack trace hash map used for profiling." : stdgo.GoString), kind : (1 : stdgo._internal.runtime.metrics.Metrics_ValueKind.ValueKind) } : stdgo._internal.runtime.metrics.Metrics_Description.Description),
({ name : ("/memory/classes/total:bytes" : stdgo.GoString), description : ("All memory mapped by the Go runtime into the current process as read-write. Note that this does not include memory mapped by code called via cgo or via the syscall package. Sum of all metrics in /memory/classes." : stdgo.GoString), kind : (1 : stdgo._internal.runtime.metrics.Metrics_ValueKind.ValueKind) } : stdgo._internal.runtime.metrics.Metrics_Description.Description),
({ name : ("/sched/gomaxprocs:threads" : stdgo.GoString), description : ("The current runtime.GOMAXPROCS setting, or the number of operating system threads that can execute user-level Go code simultaneously." : stdgo.GoString), kind : (1 : stdgo._internal.runtime.metrics.Metrics_ValueKind.ValueKind) } : stdgo._internal.runtime.metrics.Metrics_Description.Description),
({ name : ("/sched/goroutines:goroutines" : stdgo.GoString), description : ("Count of live goroutines." : stdgo.GoString), kind : (1 : stdgo._internal.runtime.metrics.Metrics_ValueKind.ValueKind) } : stdgo._internal.runtime.metrics.Metrics_Description.Description),
({ name : ("/sched/latencies:seconds" : stdgo.GoString), description : ("Distribution of the time goroutines have spent in the scheduler in a runnable state before actually running. Bucket counts increase monotonically." : stdgo.GoString), kind : (3 : stdgo._internal.runtime.metrics.Metrics_ValueKind.ValueKind), cumulative : true } : stdgo._internal.runtime.metrics.Metrics_Description.Description),
({ name : ("/sync/mutex/wait/total:seconds" : stdgo.GoString), description : ("Approximate cumulative time goroutines have spent blocked on a sync.Mutex or sync.RWMutex. This metric is useful for identifying global changes in lock contention. Collect a mutex or block profile using the runtime/pprof package for more detailed contention data." : stdgo.GoString), kind : (2 : stdgo._internal.runtime.metrics.Metrics_ValueKind.ValueKind), cumulative : true } : stdgo._internal.runtime.metrics.Metrics_Description.Description)].concat([for (i in 52 ... (52 > 52 ? 52 : 52 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.metrics.Metrics_Description.Description)])) : stdgo.Slice<stdgo._internal.runtime.metrics.Metrics_Description.Description>);
