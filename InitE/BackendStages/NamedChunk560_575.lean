import InitE.BackendStages.RemovedChunk560_575
import InitE.BackendStages.Named560
import InitE.BackendStages.Named561
import InitE.BackendStages.Named562
import InitE.BackendStages.Named563
import InitE.BackendStages.Named564
import InitE.BackendStages.Named565
import InitE.BackendStages.Named566
import InitE.BackendStages.Named567
import InitE.BackendStages.Named568
import InitE.BackendStages.Named569
import InitE.BackendStages.Named570
import InitE.BackendStages.Named571
import InitE.BackendStages.Named572
import InitE.BackendStages.Named573
import InitE.BackendStages.Named574
import InitE.BackendStages.Named575
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.NamedChunk560_575
def bodies : List (Nat × StackLang.HolProg 64) := [Named560, Named561, Named562, Named563, Named564, Named565, Named566, Named567, Named568, Named569, Named570, Named571, Named572, Named573, Named574, Named575]
theorem compiled_eq : RemovedChunk560_575.bodies.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies := by
  change [StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed560, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed561, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed562, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed563, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed564, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed565, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed566, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed567, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed568, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed569, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed570, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed571, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed572, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed573, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed574, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed575] = bodies
  rw [Named560_eq, Named561_eq, Named562_eq, Named563_eq, Named564_eq, Named565_eq, Named566_eq, Named567_eq, Named568_eq, Named569_eq, Named570_eq, Named571_eq, Named572_eq, Named573_eq, Named574_eq, Named575_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.NamedChunk560_575
