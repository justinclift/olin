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
      (i32.const 1152)
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
    (call $runtime.initAll))
  (func $runtime.initAll (type $t3)
    (local $l0 i32) (local $l1 i32)
    (i32.store8 offset=1024
      (i32.const 0)
      (i32.const 1))
    (i32.store8 offset=1032
      (i32.const 0)
      (i32.const 1))
    (local.set $l0
      (i32.shr_u
        (i32.sub
          (i32.and
            (i32.const 132671)
            (i32.const -65536))
          (i32.const 67136))
        (i32.const 6)))
    (local.set $l1
      (i32.const 0))
    (block $B0
      (loop $L1
        (br_if $B0
          (i32.eq
            (local.get $l0)
            (local.get $l1)))
        (i32.store8
          (i32.add
            (local.get $l1)
            (i32.const 67136))
          (i32.const 0))
        (local.set $l1
          (i32.add
            (local.get $l1)
            (i32.const 1)))
        (br $L1)))
    (i32.store offset=1036
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
                (i32.load offset=1072
                  (i32.const 0)))))
          (i32.store offset=1072
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
    (i32.store offset=1076
      (i32.const 0)
      (local.get $p0))
    (i32.store offset=1072
      (i32.const 0)
      (local.get $p0)))
  (func $runtime.alloc (type $t6) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32)
    (block $B0
      (block $B1
        (block $B2
          (br_if $B2
            (i32.eqz
              (local.get $p0)))
          (local.set $l1
            (i32.shr_u
              (i32.add
                (local.get $p0)
                (i32.const 15))
              (i32.const 4)))
          (local.set $l3
            (i32.shr_u
              (i32.sub
                (local.tee $l2
                  (i32.and
                    (i32.const 132671)
                    (i32.const -65536)))
                (i32.and
                  (i32.add
                    (i32.shr_u
                      (i32.sub
                        (local.get $l2)
                        (i32.const 67136))
                      (i32.const 6))
                    (i32.const 67151))
                  (i32.const -16)))
              (i32.const 4)))
          (local.set $l4
            (local.tee $l2
              (i32.load offset=1028
                (i32.const 0))))
          (local.set $l5
            (i32.const 0))
          (local.set $l6
            (i32.const 0))
          (loop $L3
            (block $B4
              (br_if $B4
                (i32.ne
                  (local.get $l4)
                  (local.get $l2)))
              (local.set $l2
                (i32.and
                  (local.get $l6)
                  (i32.const 255)))
              (local.set $l6
                (i32.const 1))
              (br_if $B4
                (i32.eqz
                  (local.get $l2)))
              (br_if $B0
                (i32.ne
                  (local.get $l2)
                  (i32.const 1)))
              (local.set $l7
                (i32.const 0))
              (local.set $l2
                (i32.const 0))
              (block $B5
                (loop $L6
                  (br_if $B5
                    (i32.ge_u
                      (local.get $l2)
                      (i32.load offset=1128
                        (i32.const 0))))
                  (block $B7
                    (br_if $B7
                      (i32.eqz
                        (i32.and
                          (i32.load8_u
                            (i32.add
                              (i32.shr_u
                                (local.get $l2)
                                (i32.const 3))
                              (i32.const 1140)))
                          (i32.shl
                            (i32.const 1)
                            (i32.and
                              (local.get $l2)
                              (i32.const 7))))))
                    (br_if $B1
                      (i32.eqz
                        (local.tee $l6
                          (i32.add
                            (local.get $l7)
                            (i32.load offset=1132
                              (i32.const 0))))))
                    (call $runtime.markRoot
                      (i32.load
                        (local.get $l6))))
                  (local.set $l7
                    (i32.add
                      (local.get $l7)
                      (i32.const 4)))
                  (local.set $l2
                    (i32.add
                      (local.get $l2)
                      (i32.const 1)))
                  (br $L6)))
              (call $runtime.printstring
                (i32.const 1540)
                (i32.const 16))
              (call $runtime.printnl)
              (local.set $l6
                (i32.const 0))
              (local.set $l2
                (i32.const 0))
              (block $B8
                (loop $L9
                  (br_if $B8
                    (i32.ge_u
                      (local.get $l2)
                      (select
                        (local.get $l3)
                        (i32.const 0)
                        (i32.load8_u offset=1024
                          (i32.const 0)))))
                  (block $B10
                    (block $B11
                      (br_if $B11
                        (i32.eq
                          (local.tee $l7
                            (i32.and
                              (call $_runtime.gcBlock_.state
                                (local.get $l2))
                              (i32.const 255)))
                          (i32.const 3)))
                      (block $B12
                        (block $B13
                          (br_if $B13
                            (i32.eq
                              (local.get $l7)
                              (i32.const 2)))
                          (br_if $B12
                            (i32.eq
                              (local.get $l7)
                              (i32.const 1)))
                          (br $B10))
                        (local.set $l7
                          (i32.and
                            (local.get $l6)
                            (i32.const 1)))
                        (local.set $l6
                          (i32.const 0))
                        (br_if $B10
                          (i32.eqz
                            (local.get $l7))))
                      (call $_runtime.gcBlock_.markFree
                        (local.get $l2))
                      (local.set $l6
                        (i32.const 1))
                      (br $B10))
                    (br_if $B1
                      (i32.eqz
                        (local.tee $l7
                          (i32.add
                            (i32.shr_u
                              (local.get $l2)
                              (i32.const 2))
                            (i32.const 67136)))))
                    (i32.store8
                      (local.get $l7)
                      (i32.and
                        (i32.load8_u
                          (local.get $l7))
                        (i32.xor
                          (i32.shl
                            (i32.const 2)
                            (i32.and
                              (i32.shl
                                (local.get $l2)
                                (i32.const 1))
                              (i32.const 6)))
                          (i32.const -1))))
                    (local.set $l6
                      (i32.const 0)))
                  (local.set $l2
                    (i32.add
                      (local.get $l2)
                      (i32.const 1)))
                  (br $L9)))
              (local.set $l6
                (i32.const 2)))
            (block $B14
              (block $B15
                (block $B16
                  (br_if $B16
                    (i32.eqz
                      (i32.and
                        (call $_runtime.gcBlock_.state
                          (local.tee $l2
                            (select
                              (i32.const 0)
                              (local.get $l4)
                              (local.tee $l7
                                (i32.eq
                                  (local.get $l4)
                                  (select
                                    (local.get $l3)
                                    (i32.const 0)
                                    (i32.load8_u offset=1024
                                      (i32.const 0))))))))
                        (i32.const 255))))
                  (local.set $l4
                    (i32.add
                      (local.get $l2)
                      (i32.const 1)))
                  (local.set $l5
                    (i32.const 0))
                  (br $B15))
                (local.set $l4
                  (i32.add
                    (local.get $l2)
                    (i32.const 1)))
                (br_if $B14
                  (i32.eq
                    (local.tee $l5
                      (select
                        (i32.const 1)
                        (i32.add
                          (local.get $l5)
                          (i32.const 1))
                        (local.get $l7)))
                    (local.get $l1))))
              (local.set $l2
                (i32.load offset=1028
                  (i32.const 0)))
              (br $L3)))
          (i32.store offset=1028
            (i32.const 0)
            (local.get $l4))
          (call $_runtime.gcBlock_.setState
            (local.tee $l7
              (i32.sub
                (local.get $l4)
                (local.get $l1)))
            (i32.const 1))
          (local.set $l2
            (i32.add
              (i32.sub
                (i32.const 2)
                (local.get $l1))
              (local.get $l2)))
          (block $B17
            (loop $L18
              (br_if $B17
                (i32.eq
                  (local.get $l2)
                  (i32.load offset=1028
                    (i32.const 0))))
              (call $_runtime.gcBlock_.setState
                (local.get $l2)
                (i32.const 2))
              (local.set $l2
                (i32.add
                  (local.get $l2)
                  (i32.const 1)))
              (br $L18)))
          (local.set $l7
            (i32.add
              (select
                (i32.and
                  (i32.add
                    (i32.shr_u
                      (i32.sub
                        (i32.and
                          (i32.const 132671)
                          (i32.const -65536))
                        (i32.const 67136))
                      (i32.const 6))
                    (i32.const 67151))
                  (i32.const -16))
                (i32.const 0)
                (i32.load8_u offset=1032
                  (i32.const 0)))
              (i32.shl
                (local.get $l7)
                (i32.const 4))))
          (local.set $l2
            (i32.const 0))
          (block $B19
            (loop $L20
              (br_if $B19
                (i32.eq
                  (local.get $p0)
                  (local.get $l2)))
              (i32.store8
                (i32.add
                  (local.get $l7)
                  (local.get $l2))
                (i32.const 0))
              (local.set $l2
                (i32.add
                  (local.get $l2)
                  (i32.const 1)))
              (br $L20)))
          (return
            (local.get $l7)))
        (return
          (i32.const 1040)))
      (call $runtime.nilpanic)
      (unreachable))
    (call $runtime.runtimePanic
      (i32.const 1159)
      (i32.const 13))
    (unreachable))
  (func $runtime.markRoot (type $t0) (param $p0 i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32)
    (block $B0
      (block $B1
        (br_if $B1
          (i32.ge_u
            (local.get $p0)
            (local.tee $l1
              (i32.and
                (i32.const 132671)
                (i32.const -65536)))))
        (br_if $B1
          (i32.gt_u
            (local.tee $l1
              (select
                (i32.and
                  (i32.add
                    (i32.shr_u
                      (i32.sub
                        (local.get $l1)
                        (i32.const 67136))
                      (i32.const 6))
                    (i32.const 67151))
                  (i32.const -16))
                (i32.const 0)
                (i32.load8_u offset=1032
                  (i32.const 0))))
            (local.get $p0)))
        (local.set $p0
          (i32.add
            (local.tee $l2
              (i32.shr_u
                (i32.sub
                  (local.get $p0)
                  (local.get $l1))
                (i32.const 4)))
            (i32.const 1)))
        (local.set $l1
          (i32.add
            (i32.shl
              (local.get $l2)
              (i32.const 4))
            (i32.const 32)))
        (loop $L2
          (local.set $l1
            (i32.add
              (local.get $l1)
              (i32.const -16)))
          (br_if $L2
            (i32.eq
              (i32.and
                (call $_runtime.gcBlock_.state
                  (local.tee $p0
                    (i32.add
                      (local.get $p0)
                      (i32.const -1))))
                (i32.const 255))
              (i32.const 2))))
        (br_if $B1
          (i32.eq
            (i32.and
              (call $_runtime.gcBlock_.state
                (local.get $p0))
              (i32.const 255))
            (i32.const 3)))
        (call $_runtime.gcBlock_.setState
          (local.get $p0)
          (i32.const 3))
        (local.set $p0
          (i32.sub
            (i32.shl
              (local.tee $l2
                (i32.add
                  (local.get $l2)
                  (i32.eq
                    (i32.and
                      (call $_runtime.gcBlock_.state
                        (local.get $l2))
                      (i32.const 255))
                    (i32.const 1))))
              (i32.const 4))
            (local.get $l1)))
        (loop $L3
          (local.set $p0
            (i32.add
              (local.get $p0)
              (i32.const 16)))
          (local.set $l3
            (call $_runtime.gcBlock_.state
              (local.get $l2)))
          (local.set $l2
            (i32.add
              (local.get $l2)
              (i32.const 1)))
          (br_if $L3
            (i32.eq
              (i32.and
                (local.get $l3)
                (i32.const 255))
              (i32.const 2))))
        (local.set $l1
          (i32.add
            (i32.add
              (select
                (i32.and
                  (i32.add
                    (i32.shr_u
                      (i32.sub
                        (i32.and
                          (i32.const 132671)
                          (i32.const -65536))
                        (i32.const 67136))
                      (i32.const 6))
                    (i32.const 67151))
                  (i32.const -16))
                (i32.const 0)
                (i32.load8_u offset=1032
                  (i32.const 0)))
              (local.get $l1))
            (i32.const -16)))
        (loop $L4
          (br_if $B1
            (i32.eqz
              (local.get $p0)))
          (br_if $B0
            (i32.eqz
              (local.get $l1)))
          (call $runtime.markRoot
            (i32.load
              (local.get $l1)))
          (local.set $p0
            (i32.add
              (local.get $p0)
              (i32.const -4)))
          (local.set $l1
            (i32.add
              (local.get $l1)
              (i32.const 4)))
          (br $L4)))
      (return))
    (call $runtime.nilpanic)
    (unreachable))
  (func $_runtime.gcBlock_.state (type $t6) (param $p0 i32) (result i32)
    (local $l1 i32)
    (block $B0
      (br_if $B0
        (i32.eqz
          (local.tee $l1
            (i32.add
              (i32.shr_u
                (local.get $p0)
                (i32.const 2))
              (i32.const 67136)))))
      (return
        (i32.and
          (i32.shr_u
            (i32.load8_u
              (local.get $l1))
            (i32.and
              (i32.shl
                (local.get $p0)
                (i32.const 1))
              (i32.const 6)))
          (i32.const 3))))
    (call $runtime.nilpanic)
    (unreachable))
  (func $_runtime.gcBlock_.markFree (type $t0) (param $p0 i32)
    (local $l1 i32)
    (block $B0
      (br_if $B0
        (i32.eqz
          (local.tee $l1
            (i32.add
              (i32.shr_u
                (local.get $p0)
                (i32.const 2))
              (i32.const 67136)))))
      (i32.store8
        (local.get $l1)
        (i32.and
          (i32.load8_u
            (local.get $l1))
          (i32.xor
            (i32.shl
              (i32.const 3)
              (i32.and
                (i32.shl
                  (local.get $p0)
                  (i32.const 1))
                (i32.const 6)))
            (i32.const -1))))
      (return))
    (call $runtime.nilpanic)
    (unreachable))
  (func $_runtime.gcBlock_.setState (type $t4) (param $p0 i32) (param $p1 i32)
    (local $l2 i32)
    (block $B0
      (br_if $B0
        (i32.eqz
          (local.tee $l2
            (i32.add
              (i32.shr_u
                (local.get $p0)
                (i32.const 2))
              (i32.const 67136)))))
      (i32.store8
        (local.get $l2)
        (i32.or
          (i32.load8_u
            (local.get $l2))
          (i32.shl
            (local.get $p1)
            (i32.and
              (i32.shl
                (local.get $p0)
                (i32.const 1))
              (i32.const 6)))))
      (return))
    (call $runtime.nilpanic)
    (unreachable))
  (func $runtime.nilpanic (type $t3)
    (call $runtime.runtimePanic
      (i32.const 1472)
      (i32.const 23))
    (unreachable))
  (func $runtime.runtimePanic (type $t4) (param $p0 i32) (param $p1 i32)
    (call $runtime.printstring
      (i32.const 1504)
      (i32.const 36))
    (call $runtime.printstring
      (local.get $p0)
      (local.get $p1))
    (call $runtime.printnl)
    (unreachable)
    (unreachable))
  (func $cwa_main (type $t3)
    (local $l0 i32) (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32)
    (call $runtime.initAll)
    (local.set $l0
      (i32.const 0))
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
                      (i32.const 1084)))))
              (local.set $l6
                (i32.load
                  (local.tee $l5
                    (i32.add
                      (local.get $l2)
                      (i32.const 1080)))))
              (local.set $l8
                (i32.load
                  (local.tee $l7
                    (i32.add
                      (i32.shl
                        (local.get $l1)
                        (i32.const 2))
                      (i32.const 1044)))))
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
                  (i32.const 1088))
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
            (i32.const 1591)
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
      (i32.const 1568))
    (call $runtime._panic
      (local.get $l1))
    (unreachable))
  (func $main.go.randuint32 (type $t1) (result i32)
    (local $l0 i32)
    (i32.store offset=1136
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
                          (i32.load offset=1136
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
      (i32.const 1440)
      (i32.const 18))
    (unreachable))
  (func $dumpHeap (type $t3)
    (local $l0 i32) (local $l1 i32) (local $l2 i32) (local $l3 i32)
    (call $runtime.printstring
      (i32.const 1172)
      (i32.const 5))
    (call $runtime.printnl)
    (local.set $l1
      (i32.shr_u
        (i32.sub
          (local.tee $l0
            (i32.and
              (i32.const 132671)
              (i32.const -65536)))
          (i32.and
            (i32.add
              (i32.shr_u
                (i32.sub
                  (local.get $l0)
                  (i32.const 67136))
                (i32.const 6))
              (i32.const 67151))
            (i32.const -16)))
        (i32.const 4)))
    (local.set $l0
      (i32.const 1))
    (block $B0
      (loop $L1
        (br_if $B0
          (i32.ge_u
            (local.tee $l2
              (i32.add
                (local.get $l0)
                (i32.const -1)))
            (select
              (local.get $l1)
              (i32.const 0)
              (i32.load8_u offset=1024
                (i32.const 0)))))
        (block $B2
          (block $B3
            (block $B4
              (block $B5
                (br_if $B5
                  (i32.eq
                    (local.tee $l3
                      (i32.and
                        (call $_runtime.gcBlock_.state
                          (local.get $l2))
                        (i32.const 255)))
                    (i32.const 3)))
                (br_if $B4
                  (i32.eq
                    (local.get $l3)
                    (i32.const 2)))
                (br_if $B3
                  (i32.ne
                    (local.get $l3)
                    (i32.const 1)))
                (call $runtime.printstring
                  (i32.const 1177)
                  (i32.const 1))
                (br $B2))
              (call $runtime.printstring
                (i32.const 1179)
                (i32.const 1))
              (br $B2))
            (call $runtime.printstring
              (i32.const 1178)
              (i32.const 1))
            (br $B2))
          (call $runtime.printstring
            (i32.const 1180)
            (i32.const 2)))
        (block $B6
          (block $B7
            (br_if $B7
              (i32.eq
                (i32.and
                  (local.get $l2)
                  (i32.const 63))
                (i32.const 63)))
            (br_if $B6
              (i32.ne
                (local.get $l0)
                (select
                  (local.get $l1)
                  (i32.const 0)
                  (i32.load8_u offset=1024
                    (i32.const 0))))))
          (call $runtime.printnl))
        (local.set $l0
          (i32.add
            (local.get $l0)
            (i32.const 1)))
        (br $L1))))
  (func $dumpMemInfo (type $t3)
    (local $l0 i32) (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32)
    (global.set $g0
      (local.tee $l0
        (i32.sub
          (global.get $g0)
          (i32.const 16))))
    (local.set $l1
      (i32.load8_u offset=1032
        (i32.const 0)))
    (call $runtime.printstring
      (i32.const 1184)
      (i32.const 18))
    (call $runtime.putchar
      (i32.const 32))
    (call $runtime.printptr
      (i32.const 67136))
    (call $runtime.printnl)
    (call $runtime.printstring
      (i32.const 1216)
      (i32.const 18))
    (call $runtime.putchar
      (i32.const 32))
    (call $runtime.printptr
      (local.tee $l2
        (i32.and
          (i32.const 132671)
          (i32.const -65536))))
    (call $runtime.printnl)
    (call $runtime.printstring
      (i32.const 1248)
      (i32.const 18))
    (call $runtime.putchar
      (i32.const 32))
    (call $runtime.printptr
      (local.tee $l2
        (i32.sub
          (local.get $l2)
          (i32.const 67136))))
    (call $runtime.printnl)
    (call $runtime.printstring
      (i32.const 1280)
      (i32.const 18))
    (call $runtime.putchar
      (i32.const 32))
    (call $runtime.printptr
      (local.tee $l2
        (i32.shr_u
          (local.get $l2)
          (i32.const 6))))
    (call $runtime.printnl)
    (local.set $l3
      (i32.load8_u offset=1032
        (i32.const 0)))
    (call $runtime.printstring
      (i32.const 1312)
      (i32.const 18))
    (call $runtime.putchar
      (i32.const 32))
    (call $runtime.printptr
      (select
        (i32.and
          (i32.add
            (local.get $l2)
            (i32.const 67151))
          (i32.const -16))
        (i32.const 0)
        (local.get $l3)))
    (call $runtime.printnl)
    (call $runtime.printstring
      (i32.const 1344)
      (i32.const 18))
    (call $runtime.putchar
      (i32.const 32))
    (i32.store16
      (i32.add
        (local.get $l0)
        (i32.const 8))
      (i32.const 0))
    (i64.store
      (local.get $l0)
      (i64.const 0))
    (local.set $l2
      (i32.const 9))
    (local.set $l3
      (i32.const 16))
    (block $B0
      (loop $L1
        (br_if $B0
          (i32.le_s
            (local.get $l2)
            (i32.const -1)))
        (i32.store8
          (i32.add
            (local.get $l0)
            (local.get $l2))
          (i32.or
            (i32.sub
              (local.get $l3)
              (i32.mul
                (local.tee $l4
                  (i32.div_u
                    (local.get $l3)
                    (i32.const 10)))
                (i32.const 10)))
            (i32.const 48)))
        (local.set $l2
          (i32.add
            (local.get $l2)
            (i32.const -1)))
        (local.set $l3
          (local.get $l4))
        (br $L1)))
    (local.set $l4
      (select
        (i32.shr_u
          (i32.sub
            (local.tee $l2
              (i32.and
                (i32.const 132671)
                (i32.const -65536)))
            (i32.and
              (i32.add
                (i32.shr_u
                  (i32.sub
                    (local.get $l2)
                    (i32.const 67136))
                  (i32.const 6))
                (i32.const 67151))
              (i32.const -16)))
          (i32.const 4))
        (i32.shr_u
          (local.get $l2)
          (i32.const 4))
        (i32.and
          (local.get $l1)
          (i32.const 1))))
    (local.set $l3
      (i32.add
        (local.get $l0)
        (i32.const 8)))
    (local.set $l2
      (i32.const 0))
    (block $B2
      (loop $L3
        (br_if $B2
          (i32.eq
            (local.get $l2)
            (i32.const 2)))
        (call $runtime.putchar
          (i32.load8_u
            (i32.add
              (local.get $l3)
              (local.get $l2))))
        (local.set $l2
          (i32.add
            (local.get $l2)
            (i32.const 1)))
        (br $L3)))
    (call $runtime.printnl)
    (call $runtime.printstring
      (i32.const 1376)
      (i32.const 18))
    (call $runtime.putchar
      (i32.const 32))
    (call $runtime.printptr
      (local.get $l4))
    (call $runtime.printnl)
    (call $runtime.printstring
      (i32.const 1408)
      (i32.const 18))
    (call $runtime.putchar
      (i32.const 32))
    (call $runtime.printptr
      (i32.and
        (i32.shr_u
          (i32.sub
            (i32.and
              (i32.const 132671)
              (i32.const -65536))
            (i32.const 67136))
          (i32.const 4))
        (i32.const 268435452)))
    (call $runtime.printnl)
    (global.set $g0
      (i32.add
        (local.get $l0)
        (i32.const 16))))
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
        (i32.load offset=1036
          (i32.const 0))
        (i32.add
          (local.get $l1)
          (i32.const 12))
        (i32.const 1)))
    (global.set $g0
      (i32.add
        (local.get $l1)
        (i32.const 16))))
  (func $runtime.printptr (type $t0) (param $p0 i32)
    (local $l1 i32) (local $l2 i32)
    (block $B0
      (br_if $B0
        (i32.eqz
          (local.get $p0)))
      (call $runtime.putchar
        (i32.const 48))
      (call $runtime.putchar
        (i32.const 120))
      (local.set $l1
        (i32.const 8))
      (block $B1
        (loop $L2
          (br_if $B1
            (i32.eqz
              (local.get $l1)))
          (block $B3
            (block $B4
              (br_if $B4
                (i32.gt_u
                  (local.tee $l2
                    (i32.shr_u
                      (local.get $p0)
                      (i32.const 28)))
                  (i32.const 9)))
              (call $runtime.putchar
                (i32.or
                  (local.get $l2)
                  (i32.const 48)))
              (br $B3))
            (call $runtime.putchar
              (i32.add
                (local.get $l2)
                (i32.const 87))))
          (local.set $l1
            (i32.add
              (local.get $l1)
              (i32.const -1)))
          (local.set $p0
            (i32.shl
              (local.get $p0)
              (i32.const 4)))
          (br $L2)))
      (return))
    (call $runtime.printstring
      (i32.const 1495)
      (i32.const 3)))
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
  (table $T0 1 1 funcref)
  (memory $memory 2)
  (global $g0 (mut i32) (i32.const 67136))
  (global $__heap_base i32 (i32.const 67136))
  (global $__data_end i32 (i32.const 1593))
  (global $__dso_handle i32 (i32.const 1024))
  (global $runtime.trackedGlobalsLength i32 (i32.const 1128))
  (global $runtime.trackedGlobalsBitmap.40 i32 (i32.const 1140))
  (global $runtime.trackedGlobalsStart i32 (i32.const 1132))
  (export "memory" (memory 0))
  (export "__wasm_call_ctors" (func $__wasm_call_ctors))
  (export "__heap_base" (global 1))
  (export "__data_end" (global 2))
  (export "__dso_handle" (global 3))
  (export "_start" (func $_start))
  (export "runtime.activateTask" (func $runtime.activateTask))
  (export "runtime.trackedGlobalsLength" (global 4))
  (export "runtime.trackedGlobalsBitmap.40" (global 5))
  (export "runtime.trackedGlobalsStart" (global 6))
  (export "cwa_main" (func $cwa_main))
  (export "dumpHeap" (func $dumpHeap))
  (export "dumpMemInfo" (func $dumpMemInfo))
  (export "memset" (func $memset))
  (data $d0 (i32.const 1024) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
  (data $d1 (i32.const 1128) "\0e\00\00\000\04\00\00\01\00\00\00'\09")
  (data $d2 (i32.const 1152) "panic: out of memoryheap:*-#\c2\b7\00\00heapStart:        \00\00\00\00\00\00\00\00\00\00\00\00\00\00heapEnd:          \00\00\00\00\00\00\00\00\00\00\00\00\00\00total size:       \00\00\00\00\00\00\00\00\00\00\00\00\00\00metadata size:    \00\00\00\00\00\00\00\00\00\00\00\00\00\00poolStart:        \00\00\00\00\00\00\00\00\00\00\00\00\00\00bytesPerBlock:    \00\00\00\00\00\00\00\00\00\00\00\00\00\00# of blocks:      \00\00\00\00\00\00\00\00\00\00\00\00\00\00# of block states:\00\00\00\00\00\00\00\00\00\00\00\00\00\00index out of range\00\00\00\00\00\00\00\00\00\00\00\00\00\00nil pointer dereferencenil\00\00\00\00\00\00paniczzzz: runtime errorzzz found!: Running sweep...\00\00\00\00\00\00\00\00\00\00\00\00memory was overwritten!ok"))
