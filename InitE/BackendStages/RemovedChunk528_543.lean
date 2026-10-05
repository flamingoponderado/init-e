import InitE.BackendStages.AllocChunk528_543
import InitE.BackendStages.Removed528
import InitE.BackendStages.Removed529
import InitE.BackendStages.Removed530
import InitE.BackendStages.Removed531
import InitE.BackendStages.Removed532
import InitE.BackendStages.Removed533
import InitE.BackendStages.Removed534
import InitE.BackendStages.Removed535
import InitE.BackendStages.Removed536
import InitE.BackendStages.Removed537
import InitE.BackendStages.Removed538
import InitE.BackendStages.Removed539
import InitE.BackendStages.Removed540
import InitE.BackendStages.Removed541
import InitE.BackendStages.Removed542
import InitE.BackendStages.Removed543
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.RemovedChunk528_543
def bodies : List (Nat × StackLang.HolProg 64) := [Removed528, Removed529, Removed530, Removed531, Removed532, Removed533, Removed534, Removed535, Removed536, Removed537, Removed538, Removed539, Removed540, Removed541, Removed542, Removed543]
theorem compiled_eq : AllocChunk528_543.bodies.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies := by
  change [StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc528, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc529, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc530, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc531, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc532, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc533, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc534, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc535, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc536, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc537, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc538, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc539, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc540, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc541, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc542, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc543] = bodies
  rw [Removed528_eq, Removed529_eq, Removed530_eq, Removed531_eq, Removed532_eq, Removed533_eq, Removed534_eq, Removed535_eq, Removed536_eq, Removed537_eq, Removed538_eq, Removed539_eq, Removed540_eq, Removed541_eq, Removed542_eq, Removed543_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.RemovedChunk528_543
