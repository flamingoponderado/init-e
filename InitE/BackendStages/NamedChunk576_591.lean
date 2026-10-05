import InitE.BackendStages.RemovedChunk576_591
import InitE.BackendStages.Named576
import InitE.BackendStages.Named577
import InitE.BackendStages.Named578
import InitE.BackendStages.Named579
import InitE.BackendStages.Named580
import InitE.BackendStages.Named581
import InitE.BackendStages.Named582
import InitE.BackendStages.Named583
import InitE.BackendStages.Named584
import InitE.BackendStages.Named585
import InitE.BackendStages.Named586
import InitE.BackendStages.Named587
import InitE.BackendStages.Named588
import InitE.BackendStages.Named589
import InitE.BackendStages.Named590
import InitE.BackendStages.Named591
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.NamedChunk576_591
def bodies : List (Nat × StackLang.HolProg 64) := [Named576, Named577, Named578, Named579, Named580, Named581, Named582, Named583, Named584, Named585, Named586, Named587, Named588, Named589, Named590, Named591]
theorem compiled_eq : RemovedChunk576_591.bodies.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies := by
  change [StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed576, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed577, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed578, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed579, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed580, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed581, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed582, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed583, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed584, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed585, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed586, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed587, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed588, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed589, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed590, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed591] = bodies
  rw [Named576_eq, Named577_eq, Named578_eq, Named579_eq, Named580_eq, Named581_eq, Named582_eq, Named583_eq, Named584_eq, Named585_eq, Named586_eq, Named587_eq, Named588_eq, Named589_eq, Named590_eq, Named591_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.NamedChunk576_591
