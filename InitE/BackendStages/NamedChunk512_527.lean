import InitE.BackendStages.RemovedChunk512_527
import InitE.BackendStages.Named512
import InitE.BackendStages.Named513
import InitE.BackendStages.Named514
import InitE.BackendStages.Named515
import InitE.BackendStages.Named516
import InitE.BackendStages.Named517
import InitE.BackendStages.Named518
import InitE.BackendStages.Named519
import InitE.BackendStages.Named520
import InitE.BackendStages.Named521
import InitE.BackendStages.Named522
import InitE.BackendStages.Named523
import InitE.BackendStages.Named524
import InitE.BackendStages.Named525
import InitE.BackendStages.Named526
import InitE.BackendStages.Named527
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.NamedChunk512_527
def bodies : List (Nat × StackLang.HolProg 64) := [Named512, Named513, Named514, Named515, Named516, Named517, Named518, Named519, Named520, Named521, Named522, Named523, Named524, Named525, Named526, Named527]
theorem compiled_eq : RemovedChunk512_527.bodies.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies := by
  change [StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed512, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed513, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed514, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed515, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed516, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed517, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed518, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed519, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed520, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed521, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed522, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed523, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed524, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed525, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed526, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed527] = bodies
  rw [Named512_eq, Named513_eq, Named514_eq, Named515_eq, Named516_eq, Named517_eq, Named518_eq, Named519_eq, Named520_eq, Named521_eq, Named522_eq, Named523_eq, Named524_eq, Named525_eq, Named526_eq, Named527_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.NamedChunk512_527
