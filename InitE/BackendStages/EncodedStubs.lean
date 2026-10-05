import InitE.BackendStages.FilteredStubs
import InitE.BackendStages.Encoded0
import InitE.BackendStages.Encoded1
import InitE.BackendStages.Encoded2
import InitE.BackendStages.Encoded4
import InitE.BackendStages.Encoded5
import InitE.BackendStages.Encoded6
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.EncodedStubs
def sections : LabSem.LabProgHOL 64 := [Encoded0, Encoded1, Encoded2, Encoded4, Encoded5, Encoded6]
theorem compiled_eq : FilteredStubs.sections.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections := by
  change [LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered0, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered1, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered2, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered4, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered5, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered6] = sections
  rw [Encoded0_eq, Encoded1_eq, Encoded2_eq, Encoded4_eq, Encoded5_eq, Encoded6_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.EncodedStubs
