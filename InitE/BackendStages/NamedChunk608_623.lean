import InitE.BackendStages.RemovedChunk608_623
import InitE.BackendStages.Named608
import InitE.BackendStages.Named609
import InitE.BackendStages.Named610
import InitE.BackendStages.Named611
import InitE.BackendStages.Named612
import InitE.BackendStages.Named613
import InitE.BackendStages.Named614
import InitE.BackendStages.Named615
import InitE.BackendStages.Named616
import InitE.BackendStages.Named617
import InitE.BackendStages.Named618
import InitE.BackendStages.Named619
import InitE.BackendStages.Named620
import InitE.BackendStages.Named621
import InitE.BackendStages.Named622
import InitE.BackendStages.Named623
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.NamedChunk608_623
def bodies : List (Nat × StackLang.HolProg 64) := [Named608, Named609, Named610, Named611, Named612, Named613, Named614, Named615, Named616, Named617, Named618, Named619, Named620, Named621, Named622, Named623]
theorem compiled_eq : RemovedChunk608_623.bodies.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies := by
  change [StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed608, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed609, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed610, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed611, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed612, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed613, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed614, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed615, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed616, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed617, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed618, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed619, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed620, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed621, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed622, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed623] = bodies
  rw [Named608_eq, Named609_eq, Named610_eq, Named611_eq, Named612_eq, Named613_eq, Named614_eq, Named615_eq, Named616_eq, Named617_eq, Named618_eq, Named619_eq, Named620_eq, Named621_eq, Named622_eq, Named623_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.NamedChunk608_623
