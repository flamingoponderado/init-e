import InitE.BackendStages.RemovedChunk496_511
import InitE.BackendStages.Named496
import InitE.BackendStages.Named497
import InitE.BackendStages.Named498
import InitE.BackendStages.Named499
import InitE.BackendStages.Named500
import InitE.BackendStages.Named501
import InitE.BackendStages.Named502
import InitE.BackendStages.Named503
import InitE.BackendStages.Named504
import InitE.BackendStages.Named505
import InitE.BackendStages.Named506
import InitE.BackendStages.Named507
import InitE.BackendStages.Named508
import InitE.BackendStages.Named509
import InitE.BackendStages.Named510
import InitE.BackendStages.Named511
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.NamedChunk496_511
def bodies : List (Nat × StackLang.HolProg 64) := [Named496, Named497, Named498, Named499, Named500, Named501, Named502, Named503, Named504, Named505, Named506, Named507, Named508, Named509, Named510, Named511]
theorem compiled_eq : RemovedChunk496_511.bodies.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies := by
  change [StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed496, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed497, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed498, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed499, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed500, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed501, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed502, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed503, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed504, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed505, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed506, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed507, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed508, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed509, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed510, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed511] = bodies
  rw [Named496_eq, Named497_eq, Named498_eq, Named499_eq, Named500_eq, Named501_eq, Named502_eq, Named503_eq, Named504_eq, Named505_eq, Named506_eq, Named507_eq, Named508_eq, Named509_eq, Named510_eq, Named511_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.NamedChunk496_511
