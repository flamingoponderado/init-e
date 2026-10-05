import InitE.BackendStages.FilteredChunk208_223
import InitE.BackendStages.Encoded208
import InitE.BackendStages.Encoded209
import InitE.BackendStages.Encoded210
import InitE.BackendStages.Encoded211
import InitE.BackendStages.Encoded212
import InitE.BackendStages.Encoded213
import InitE.BackendStages.Encoded214
import InitE.BackendStages.Encoded215
import InitE.BackendStages.Encoded216
import InitE.BackendStages.Encoded217
import InitE.BackendStages.Encoded218
import InitE.BackendStages.Encoded219
import InitE.BackendStages.Encoded220
import InitE.BackendStages.Encoded221
import InitE.BackendStages.Encoded222
import InitE.BackendStages.Encoded223
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.EncodedChunk208_223
def sections : LabSem.LabProgHOL 64 := [Encoded208, Encoded209, Encoded210, Encoded211, Encoded212, Encoded213, Encoded214, Encoded215, Encoded216, Encoded217, Encoded218, Encoded219, Encoded220, Encoded221, Encoded222, Encoded223]
theorem compiled_eq : FilteredChunk208_223.sections.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections := by
  change [LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered208, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered209, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered210, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered211, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered212, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered213, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered214, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered215, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered216, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered217, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered218, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered219, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered220, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered221, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered222, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered223] = sections
  rw [Encoded208_eq, Encoded209_eq, Encoded210_eq, Encoded211_eq, Encoded212_eq, Encoded213_eq, Encoded214_eq, Encoded215_eq, Encoded216_eq, Encoded217_eq, Encoded218_eq, Encoded219_eq, Encoded220_eq, Encoded221_eq, Encoded222_eq, Encoded223_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.EncodedChunk208_223
