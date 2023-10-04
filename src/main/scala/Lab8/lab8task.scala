package Lab8
import chisel3._
import chisel3.util._
class lab8task extends Module{
    val io = IO(new Bundle{
        val req = Vec(4,Flipped(Decoupled(UInt(32.W))))
        val waddr = Input(UInt(5.W))
        val raddr = Input(UInt(5.W))
        val memory = Vec(4,Output(UInt(32.W)))
    })
    val arb_priority = Module ( new RRArbiter ( UInt () , 4) )
    val data =Reg(Vec(4,UInt()))
    val mem = SyncReadMem(1024,Vec(4 ,UInt(32.W)))
    val q1 = Queue(io.req(0))
    val q2 = Queue(io.req(1))
    val q3 = Queue(io.req(2))
    val q4 = Queue(io.req(3))
    arb_priority.io.in(0) <> q1 
    arb_priority.io.in(1) <> q2
    arb_priority.io.in(2) <> q3
    arb_priority.io.in(3) <> q4
    arb_priority.io.out.ready := 1.B
    when (io.req(0).valid){
        data(0) := arb_priority.io.out.ready
        data(1) :=  0.U
        data(2) := 0.U
        data(3) :=  0.U
        mem.write(io.waddr,data)
    }.elsewhen(io.req(1).valid){
        data(1):= arb_priority.io.out.ready
        data(0):= 0.U
        data(2) := 0.U
        data(3) := 0.U
        mem.write(io.waddr,data)
    }.elsewhen(io.req(2).valid){
        data(2) := arb_priority.io.out.ready
        data(1):= 0.U
        data(3):= 0.U
        data(0):= 0.U
        mem.write(io.waddr,data)
    }.elsewhen(io.req(3).valid){
        data(3) := arb_priority.io.out.ready
        data(2):= 0.U
        data(1) := 0.U
        data(0):= 0.U
        mem.write(io.waddr,data)
    }
    io.memory := mem.read(io.raddr)
}      