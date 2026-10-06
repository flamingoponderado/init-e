import InitE.BackendStages.RemovedChunk160_175
import InitE.BackendStages.Named160
import InitE.BackendStages.Named161
import InitE.BackendStages.Named162
import InitE.BackendStages.Named163
import InitE.BackendStages.Named164
import InitE.BackendStages.Named165
import InitE.BackendStages.Named166
import InitE.BackendStages.Named167
import InitE.BackendStages.Named168
import InitE.BackendStages.Named169
import InitE.BackendStages.Named170
import InitE.BackendStages.Named171
import InitE.BackendStages.Named172
import InitE.BackendStages.Named173
import InitE.BackendStages.Named174
import InitE.BackendStages.Named175
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.NamedChunk160_175
def bodies : List (Nat × StackLang.HolProg 64) := [Named160, Named161, Named162, Named163, Named164, Named165, Named166, Named167, Named168, Named169, Named170, Named171, Named172, Named173, Named174, Named175]
theorem compiled_eq : RemovedChunk160_175.bodies.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies := by
  change [StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed160, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed161, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed162, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed163, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed164, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed165, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed166, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed167, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed168, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed169, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed170, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed171, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed172, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed173, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed174, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed175] = bodies
  rw [Named160_eq, Named161_eq, Named162_eq, Named163_eq, Named164_eq, Named165_eq, Named166_eq, Named167_eq, Named168_eq, Named169_eq, Named170_eq, Named171_eq, Named172_eq, Named173_eq, Named174_eq, Named175_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.NamedChunk160_175
