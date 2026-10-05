import InitE.BackendStages.RemovedChunk480_495
import InitE.BackendStages.Named480
import InitE.BackendStages.Named481
import InitE.BackendStages.Named482
import InitE.BackendStages.Named483
import InitE.BackendStages.Named484
import InitE.BackendStages.Named485
import InitE.BackendStages.Named486
import InitE.BackendStages.Named487
import InitE.BackendStages.Named488
import InitE.BackendStages.Named489
import InitE.BackendStages.Named490
import InitE.BackendStages.Named491
import InitE.BackendStages.Named492
import InitE.BackendStages.Named493
import InitE.BackendStages.Named494
import InitE.BackendStages.Named495
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.NamedChunk480_495
def bodies : List (Nat × StackLang.HolProg 64) := [Named480, Named481, Named482, Named483, Named484, Named485, Named486, Named487, Named488, Named489, Named490, Named491, Named492, Named493, Named494, Named495]
theorem compiled_eq : RemovedChunk480_495.bodies.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies := by
  change [StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed480, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed481, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed482, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed483, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed484, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed485, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed486, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed487, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed488, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed489, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed490, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed491, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed492, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed493, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed494, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed495] = bodies
  rw [Named480_eq, Named481_eq, Named482_eq, Named483_eq, Named484_eq, Named485_eq, Named486_eq, Named487_eq, Named488_eq, Named489_eq, Named490_eq, Named491_eq, Named492_eq, Named493_eq, Named494_eq, Named495_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.NamedChunk480_495
