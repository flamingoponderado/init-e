import InitE.BackendStages.FilteredChunk384_399
import InitE.BackendStages.Encoded384
import InitE.BackendStages.Encoded385
import InitE.BackendStages.Encoded386
import InitE.BackendStages.Encoded387
import InitE.BackendStages.Encoded388
import InitE.BackendStages.Encoded389
import InitE.BackendStages.Encoded390
import InitE.BackendStages.Encoded391
import InitE.BackendStages.Encoded392
import InitE.BackendStages.Encoded393
import InitE.BackendStages.Encoded394
import InitE.BackendStages.Encoded395
import InitE.BackendStages.Encoded396
import InitE.BackendStages.Encoded397
import InitE.BackendStages.Encoded398
import InitE.BackendStages.Encoded399
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.EncodedChunk384_399
def sections : LabSem.LabProgHOL 64 := [Encoded384, Encoded385, Encoded386, Encoded387, Encoded388, Encoded389, Encoded390, Encoded391, Encoded392, Encoded393, Encoded394, Encoded395, Encoded396, Encoded397, Encoded398, Encoded399]
theorem compiled_eq : FilteredChunk384_399.sections.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections := by
  change [LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered384, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered385, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered386, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered387, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered388, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered389, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered390, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered391, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered392, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered393, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered394, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered395, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered396, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered397, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered398, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered399] = sections
  rw [Encoded384_eq, Encoded385_eq, Encoded386_eq, Encoded387_eq, Encoded388_eq, Encoded389_eq, Encoded390_eq, Encoded391_eq, Encoded392_eq, Encoded393_eq, Encoded394_eq, Encoded395_eq, Encoded396_eq, Encoded397_eq, Encoded398_eq, Encoded399_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.EncodedChunk384_399
