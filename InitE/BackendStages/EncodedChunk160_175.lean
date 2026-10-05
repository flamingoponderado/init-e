import InitE.BackendStages.FilteredChunk160_175
import InitE.BackendStages.Encoded160
import InitE.BackendStages.Encoded161
import InitE.BackendStages.Encoded162
import InitE.BackendStages.Encoded163
import InitE.BackendStages.Encoded164
import InitE.BackendStages.Encoded165
import InitE.BackendStages.Encoded166
import InitE.BackendStages.Encoded167
import InitE.BackendStages.Encoded168
import InitE.BackendStages.Encoded169
import InitE.BackendStages.Encoded170
import InitE.BackendStages.Encoded171
import InitE.BackendStages.Encoded172
import InitE.BackendStages.Encoded173
import InitE.BackendStages.Encoded174
import InitE.BackendStages.Encoded175
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.EncodedChunk160_175
def sections : LabSem.LabProgHOL 64 := [Encoded160, Encoded161, Encoded162, Encoded163, Encoded164, Encoded165, Encoded166, Encoded167, Encoded168, Encoded169, Encoded170, Encoded171, Encoded172, Encoded173, Encoded174, Encoded175]
theorem compiled_eq : FilteredChunk160_175.sections.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections := by
  change [LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered160, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered161, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered162, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered163, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered164, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered165, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered166, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered167, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered168, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered169, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered170, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered171, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered172, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered173, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered174, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered175] = sections
  rw [Encoded160_eq, Encoded161_eq, Encoded162_eq, Encoded163_eq, Encoded164_eq, Encoded165_eq, Encoded166_eq, Encoded167_eq, Encoded168_eq, Encoded169_eq, Encoded170_eq, Encoded171_eq, Encoded172_eq, Encoded173_eq, Encoded174_eq, Encoded175_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.EncodedChunk160_175
