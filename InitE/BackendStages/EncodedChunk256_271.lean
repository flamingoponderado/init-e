import InitE.BackendStages.FilteredChunk256_271
import InitE.BackendStages.Encoded256
import InitE.BackendStages.Encoded257
import InitE.BackendStages.Encoded258
import InitE.BackendStages.Encoded259
import InitE.BackendStages.Encoded260
import InitE.BackendStages.Encoded261
import InitE.BackendStages.Encoded262
import InitE.BackendStages.Encoded263
import InitE.BackendStages.Encoded264
import InitE.BackendStages.Encoded265
import InitE.BackendStages.Encoded266
import InitE.BackendStages.Encoded267
import InitE.BackendStages.Encoded268
import InitE.BackendStages.Encoded269
import InitE.BackendStages.Encoded270
import InitE.BackendStages.Encoded271
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.EncodedChunk256_271
def sections : LabSem.LabProgHOL 64 := [Encoded256, Encoded257, Encoded258, Encoded259, Encoded260, Encoded261, Encoded262, Encoded263, Encoded264, Encoded265, Encoded266, Encoded267, Encoded268, Encoded269, Encoded270, Encoded271]
theorem compiled_eq : FilteredChunk256_271.sections.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections := by
  change [LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered256, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered257, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered258, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered259, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered260, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered261, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered262, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered263, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered264, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered265, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered266, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered267, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered268, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered269, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered270, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered271] = sections
  rw [Encoded256_eq, Encoded257_eq, Encoded258_eq, Encoded259_eq, Encoded260_eq, Encoded261_eq, Encoded262_eq, Encoded263_eq, Encoded264_eq, Encoded265_eq, Encoded266_eq, Encoded267_eq, Encoded268_eq, Encoded269_eq, Encoded270_eq, Encoded271_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.EncodedChunk256_271
