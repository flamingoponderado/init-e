import InitE.BackendStages.FilteredChunk736_751
import InitE.BackendStages.Encoded736
import InitE.BackendStages.Encoded737
import InitE.BackendStages.Encoded738
import InitE.BackendStages.Encoded739
import InitE.BackendStages.Encoded740
import InitE.BackendStages.Encoded741
import InitE.BackendStages.Encoded742
import InitE.BackendStages.Encoded743
import InitE.BackendStages.Encoded744
import InitE.BackendStages.Encoded745
import InitE.BackendStages.Encoded746
import InitE.BackendStages.Encoded747
import InitE.BackendStages.Encoded748
import InitE.BackendStages.Encoded749
import InitE.BackendStages.Encoded750
import InitE.BackendStages.Encoded751
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.EncodedChunk736_751
def sections : LabSem.LabProgHOL 64 := [Encoded736, Encoded737, Encoded738, Encoded739, Encoded740, Encoded741, Encoded742, Encoded743, Encoded744, Encoded745, Encoded746, Encoded747, Encoded748, Encoded749, Encoded750, Encoded751]
theorem compiled_eq : FilteredChunk736_751.sections.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections := by
  change [LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered736, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered737, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered738, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered739, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered740, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered741, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered742, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered743, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered744, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered745, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered746, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered747, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered748, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered749, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered750, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered751] = sections
  rw [Encoded736_eq, Encoded737_eq, Encoded738_eq, Encoded739_eq, Encoded740_eq, Encoded741_eq, Encoded742_eq, Encoded743_eq, Encoded744_eq, Encoded745_eq, Encoded746_eq, Encoded747_eq, Encoded748_eq, Encoded749_eq, Encoded750_eq, Encoded751_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.EncodedChunk736_751
