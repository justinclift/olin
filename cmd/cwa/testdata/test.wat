(module
  (type $t0 (func (param i32)))
  (type $t1 (func (result i32)))
  (type $t2 (func (param i32 i32 i32) (result i32)))
  (type $t3 (func))
  (type $t4 (func (param i32 i32 i32)))
  (import "env" "io_get_stdout" (func $io_get_stdout (type $t1)))
  (import "env" "resource_write" (func $resource_write (type $t2)))
  (func $__wasm_call_ctors (type $t3))
  (func $_start (type $t3)
    (i32.store offset=1032
      (i32.const 0)
      (call $io_get_stdout)))
  (func $runtime.activateTask (type $t4) (param $p0 i32) (param $p1 i32) (param $p2 i32)
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
                (i32.load offset=1024
                  (i32.const 0)))))
          (i32.store offset=1024
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
    (i32.store offset=1028
      (i32.const 0)
      (local.get $p0))
    (i32.store offset=1024
      (i32.const 0)
      (local.get $p0)))
  (func $cwa_main (type $t3)
    (local $l0 i32)
    (i32.store offset=1032
      (i32.const 0)
      (call $io_get_stdout))
    (local.set $l0
      (i32.const -12))
    (block $B0
      (loop $L1
        (br_if $B0
          (i32.eqz
            (local.get $l0)))
        (call $runtime.putchar
          (i32.load8_u
            (i32.add
              (local.get $l0)
              (i32.const 1048))))
        (local.set $l0
          (i32.add
            (local.get $l0)
            (i32.const 1)))
        (br $L1)))
    (call $runtime.putchar
      (i32.const 13))
    (call $runtime.putchar
      (i32.const 10)))
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
        (i32.load offset=1032
          (i32.const 0))
        (i32.add
          (local.get $l1)
          (i32.const 12))
        (i32.const 1)))
    (global.set $g0
      (i32.add
        (local.get $l1)
        (i32.const 16))))
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
  (global $g0 (mut i32) (i32.const 66592))
  (global $__heap_base i32 (i32.const 66592))
  (global $__data_end i32 (i32.const 1048))
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
  (data $d0 (i32.const 1024) "\00\00\00\00\00\00\00\00\00\00\00\00")
  (data $d1 (i32.const 1036) "Hello world!"))
