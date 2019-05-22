(module
  (type $t0 (func (param i32)))
  (type $t1 (func (result i32)))
  (type $t2 (func (param i32 i32 i32) (result i32)))
  (type $t3 (func))
  (type $t4 (func (param i32 i32)))
  (type $t5 (func (param i32 i32 i32)))
  (type $t6 (func (param i32) (result i32)))
  (import "env" "io_get_stdout" (func $io_get_stdout (type $t1)))
  (import "env" "resource_write" (func $resource_write (type $t2)))
  (func $__wasm_call_ctors (type $t3))
  (func $runtime._panic (type $t0) (param $p0 i32)
    (call $runtime.printstring
      (i32.const 1120)
      (i32.const 7))
    (call $runtime.printitf
      (local.get $p0))
    (call $runtime.printnl)
    (unreachable)
    (unreachable))
  (func $runtime.printstring (type $t4) (param $p0 i32) (param $p1 i32)
    (local $l2 i32)
    (local.set $l2
      (i32.const 0))
    (block $B0
      (loop $L1
        (br_if $B0
          (i32.ge_s
            (local.get $l2)
            (local.get $p1)))
        (call $runtime.putchar
          (i32.load8_u
            (i32.add
              (local.get $p0)
              (local.get $l2))))
        (local.set $l2
          (i32.add
            (local.get $l2)
            (i32.const 1)))
        (br $L1))))
  (func $runtime.printitf (type $t0) (param $p0 i32)
    (call $runtime.printstring
      (i32.load
        (local.get $p0))
      (i32.load offset=4
        (local.get $p0))))
  (func $runtime.printnl (type $t3)
    (call $runtime.putchar
      (i32.const 13))
    (call $runtime.putchar
      (i32.const 10)))
  (func $_start (type $t3)
    (i32.store offset=1048
      (i32.const 0)
      (call $io_get_stdout)))
  (func $runtime.activateTask (type $t5) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32)
    (block $B0
      (block $B1
        (block $B2
          (br_if $B2
            (i32.eqz
              (local.get $p0)))
          (br_if $B1
            (i32.eqz
              (i32.load
                (local.get $p0))))
          (br_if $B0
            (i32.eqz
              (local.tee $l3
                (i32.load offset=1040
                  (i32.const 0)))))
          (i32.store offset=1040
            (i32.const 0)
            (local.get $p0))
          (i32.store offset=8
            (local.get $l3)
            (local.get $p0)))
        (return))
      (call_indirect (type $t0) $T0
        (local.get $p0)
        (i32.load offset=4
          (local.get $p0)))
      (return))
    (i32.store offset=1044
      (i32.const 0)
      (local.get $p0))
    (i32.store offset=1040
      (i32.const 0)
      (local.get $p0)))
  (func $runtime.alloc (type $t6) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32)
    (i32.store offset=1024
      (i32.const 0)
      (local.tee $p0
        (i32.add
          (local.tee $l1
            (i32.load offset=1024
              (i32.const 0)))
          (local.tee $l2
            (i32.and
              (i32.add
                (local.get $p0)
                (i32.const 3))
              (i32.const -4))))))
    (block $B0
      (br_if $B0
        (i32.ge_u
          (local.get $p0)
          (i32.and
            (i32.const 132415)
            (i32.const -65536))))
      (local.set $p0
        (i32.const 0))
      (block $B1
        (loop $L2
          (br_if $B1
            (i32.ge_u
              (local.get $p0)
              (local.get $l2)))
          (i32.store
            (i32.add
              (local.get $l1)
              (local.get $p0))
            (i32.const 0))
          (local.set $p0
            (i32.add
              (local.get $p0)
              (i32.const 4)))
          (br $L2)))
      (return
        (local.get $l1)))
    (call $runtime.runtimePanic
      (i32.const 1136)
      (i32.const 64))
    (unreachable))
  (func $runtime.runtimePanic (type $t4) (param $p0 i32) (param $p1 i32)
    (call $runtime.printstring
      (i32.const 1264)
      (i32.const 36))
    (call $runtime.printstring
      (local.get $p0)
      (local.get $p1))
    (call $runtime.printnl)
    (unreachable)
    (unreachable))
  (func $cwa_main (type $t3)
    (local $l0 i32) (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32)
    (local.set $l0
      (i32.const 0))
    (i32.store offset=1048
      (i32.const 0)
      (call $io_get_stdout))
    (block $B0
      (block $B1
        (block $B2
          (block $B3
            (loop $L4
              (br_if $B3
                (i32.gt_u
                  (local.get $l0)
                  (i32.const 999)))
              (local.set $l4
                (i32.load
                  (local.tee $l3
                    (i32.add
                      (local.tee $l2
                        (i32.mul
                          (local.tee $l1
                            (i32.and
                              (call $main.go.randuint32)
                              (i32.const 3)))
                          (i32.const 12)))
                      (i32.const 1076)))))
              (local.set $l6
                (i32.load
                  (local.tee $l5
                    (i32.add
                      (local.get $l2)
                      (i32.const 1072)))))
              (local.set $l8
                (i32.load
                  (local.tee $l7
                    (i32.add
                      (i32.shl
                        (local.get $l1)
                        (i32.const 2))
                      (i32.const 1052)))))
              (local.set $l1
                (i32.const 0))
              (block $B5
                (loop $L6
                  (br_if $B5
                    (i32.ge_s
                      (local.get $l1)
                      (local.get $l4)))
                  (br_if $B2
                    (i32.ge_u
                      (local.get $l1)
                      (local.get $l4)))
                  (br_if $B1
                    (i32.eqz
                      (local.tee $l9
                        (i32.add
                          (local.get $l6)
                          (local.get $l1)))))
                  (local.set $l1
                    (i32.add
                      (local.get $l1)
                      (i32.const 1)))
                  (br_if $L6
                    (i32.eq
                      (i32.load8_u
                        (local.get $l9))
                      (i32.and
                        (local.tee $l8
                          (i32.xor
                            (i32.shl
                              (local.tee $l8
                                (i32.xor
                                  (i32.shr_u
                                    (local.tee $l8
                                      (i32.xor
                                        (i32.shl
                                          (local.get $l8)
                                          (i32.const 13))
                                        (local.get $l8)))
                                    (i32.const 17))
                                  (local.get $l8)))
                              (i32.const 5))
                            (local.get $l8)))
                        (i32.const 255))))
                  (br $B0)))
              (local.set $l9
                (call $runtime.alloc
                  (local.tee $l4
                    (i32.and
                      (call $main.go.randuint32)
                      (i32.const 1023)))))
              (block $B7
                (br_if $B7
                  (i32.le_u
                    (local.get $l4)
                    (local.tee $l1
                      (i32.and
                        (call $main.go.randuint32)
                        (i32.const 1023)))))
                (local.set $l4
                  (i32.sub
                    (local.get $l4)
                    (local.get $l1)))
                (local.set $l9
                  (i32.add
                    (local.get $l9)
                    (local.get $l1))))
              (i32.store
                (local.get $l5)
                (local.get $l9))
              (i32.store
                (local.get $l3)
                (local.get $l4))
              (i32.store
                (i32.add
                  (local.get $l2)
                  (i32.const 1080))
                (local.get $l4))
              (i32.store
                (local.get $l7)
                (local.tee $l8
                  (i32.add
                    (call $main.go.randuint32)
                    (i32.const 1))))
              (local.set $l1
                (i32.const 0))
              (block $B8
                (loop $L9
                  (br_if $B8
                    (i32.ge_s
                      (local.get $l1)
                      (local.get $l4)))
                  (br_if $B2
                    (i32.ge_u
                      (local.get $l1)
                      (local.get $l4)))
                  (i32.store8
                    (i32.add
                      (local.get $l9)
                      (local.get $l1))
                    (local.tee $l8
                      (i32.xor
                        (i32.shl
                          (local.tee $l8
                            (i32.xor
                              (i32.shr_u
                                (local.tee $l8
                                  (i32.xor
                                    (i32.shl
                                      (local.get $l8)
                                      (i32.const 13))
                                    (local.get $l8)))
                                (i32.const 17))
                              (local.get $l8)))
                          (i32.const 5))
                        (local.get $l8))))
                  (local.set $l1
                    (i32.add
                      (local.get $l1)
                      (i32.const 1)))
                  (br $L9)))
              (local.set $l0
                (i32.add
                  (local.get $l0)
                  (i32.const 1)))
              (br $L4)))
          (call $runtime.printstring
            (i32.const 1335)
            (i32.const 2))
          (call $runtime.printnl)
          (return))
        (call $runtime.lookuppanic)
        (unreachable))
      (call $runtime.nilpanic)
      (unreachable))
    (i32.store offset=4
      (local.tee $l1
        (call $runtime.alloc
          (i32.const 8)))
      (i32.const 23))
    (i32.store
      (local.get $l1)
      (i32.const 1312))
    (call $runtime._panic
      (local.get $l1))
    (unreachable))
  (func $main.go.randuint32 (type $t1) (result i32)
    (local $l0 i32)
    (i32.store offset=1028
      (i32.const 0)
      (local.tee $l0
        (i32.xor
          (i32.shl
            (local.tee $l0
              (i32.xor
                (i32.shr_u
                  (local.tee $l0
                    (i32.xor
                      (i32.shl
                        (local.tee $l0
                          (i32.load offset=1028
                            (i32.const 0)))
                        (i32.const 13))
                      (local.get $l0)))
                  (i32.const 17))
                (local.get $l0)))
            (i32.const 5))
          (local.get $l0))))
    (local.get $l0))
  (func $runtime.lookuppanic (type $t3)
    (call $runtime.runtimePanic
      (i32.const 1200)
      (i32.const 18))
    (unreachable))
  (func $runtime.nilpanic (type $t3)
    (call $runtime.runtimePanic
      (i32.const 1232)
      (i32.const 23))
    (unreachable))
  (func $memset (type $t2) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32)
    (local.set $l3
      (i32.const 0))
    (block $B0
      (loop $L1
        (br_if $B0
          (i32.eq
            (local.get $p2)
            (local.get $l3)))
        (i32.store8
          (i32.add
            (local.get $p0)
            (local.get $l3))
          (local.get $p1))
        (local.set $l3
          (i32.add
            (local.get $l3)
            (i32.const 1)))
        (br $L1)))
    (local.get $p0))
  (func $runtime.putchar (type $t0) (param $p0 i32)
    (local $l1 i32)
    (global.set $g0
      (local.tee $l1
        (i32.sub
          (global.get $g0)
          (i32.const 16))))
    (i32.store offset=12
      (local.get $l1)
      (i32.const 0))
    (i32.store8 offset=12
      (local.get $l1)
      (local.get $p0))
    (drop
      (call $resource_write
        (i32.load offset=1048
          (i32.const 0))
        (i32.add
          (local.get $l1)
          (i32.const 12))
        (i32.const 1)))
    (global.set $g0
      (i32.add
        (local.get $l1)
        (i32.const 16))))
  (table $T0 1 1 funcref)
  (memory $memory 2)
  (global $g0 (mut i32) (i32.const 66880))
  (global $__heap_base i32 (i32.const 66880))
  (global $__data_end i32 (i32.const 1337))
  (global $__dso_handle i32 (i32.const 1024))
  (export "memory" (memory 0))
  (export "__wasm_call_ctors" (func $__wasm_call_ctors))
  (export "__heap_base" (global 1))
  (export "__data_end" (global 2))
  (export "__dso_handle" (global 3))
  (export "_start" (func $_start))
  (export "runtime.activateTask" (func $runtime.activateTask))
  (export "cwa_main" (func $cwa_main))
  (export "memset" (func $memset))
  (data $d0 (i32.const 1024) "@\05\01\00\01\00\00\00")
  (data $d1 (i32.const 1040) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
  (data $d2 (i32.const 1120) "panic: \00\00\00\00\00\00\00\00\00bleagggh: out of ze memories. :(  Must findz de more memories...index out of range\00\00\00\00\00\00\00\00\00\00\00\00\00\00nil pointer dereference\00\00\00\00\00\00\00\00\00paniczzzz: runtime errorzzz found!: \00\00\00\00\00\00\00\00\00\00\00\00memory was overwritten!ok"))
