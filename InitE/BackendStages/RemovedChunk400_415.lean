import InitE.BackendStages.AllocChunk400_415
import InitE.BackendStages.Removed400
import InitE.BackendStages.Removed401
import InitE.BackendStages.Removed402
import InitE.BackendStages.Removed403
import InitE.BackendStages.Removed404
import InitE.BackendStages.Removed405
import InitE.BackendStages.Removed406
import InitE.BackendStages.Removed407
import InitE.BackendStages.Removed408
import InitE.BackendStages.Removed409
import InitE.BackendStages.Removed410
import InitE.BackendStages.Removed411
import InitE.BackendStages.Removed412
import InitE.BackendStages.Removed413
import InitE.BackendStages.Removed414
import InitE.BackendStages.Removed415
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.RemovedChunk400_415
def bodies : List (Nat × StackLang.HolProg 64) := [Removed400, Removed401, Removed402, Removed403, Removed404, Removed405, Removed406, Removed407, Removed408, Removed409, Removed410, Removed411, Removed412, Removed413, Removed414, Removed415]
theorem compiled_eq : AllocChunk400_415.bodies.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies := by
  change [StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc400, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc401, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc402, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc403, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc404, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc405, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc406, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc407, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc408, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc409, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc410, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc411, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc412, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc413, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc414, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc415] = bodies
  rw [Removed400_eq, Removed401_eq, Removed402_eq, Removed403_eq, Removed404_eq, Removed405_eq, Removed406_eq, Removed407_eq, Removed408_eq, Removed409_eq, Removed410_eq, Removed411_eq, Removed412_eq, Removed413_eq, Removed414_eq, Removed415_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.RemovedChunk400_415
