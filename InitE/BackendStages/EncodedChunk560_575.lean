import InitE.BackendStages.FilteredChunk560_575
import InitE.BackendStages.Encoded560
import InitE.BackendStages.Encoded561
import InitE.BackendStages.Encoded562
import InitE.BackendStages.Encoded563
import InitE.BackendStages.Encoded564
import InitE.BackendStages.Encoded565
import InitE.BackendStages.Encoded566
import InitE.BackendStages.Encoded567
import InitE.BackendStages.Encoded568
import InitE.BackendStages.Encoded569
import InitE.BackendStages.Encoded570
import InitE.BackendStages.Encoded571
import InitE.BackendStages.Encoded572
import InitE.BackendStages.Encoded573
import InitE.BackendStages.Encoded574
import InitE.BackendStages.Encoded575
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.EncodedChunk560_575
def sections : LabSem.LabProgHOL 64 := [Encoded560, Encoded561, Encoded562, Encoded563, Encoded564, Encoded565, Encoded566, Encoded567, Encoded568, Encoded569, Encoded570, Encoded571, Encoded572, Encoded573, Encoded574, Encoded575]
theorem compiled_eq : FilteredChunk560_575.sections.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections := by
  change [LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered560, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered561, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered562, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered563, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered564, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered565, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered566, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered567, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered568, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered569, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered570, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered571, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered572, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered573, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered574, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered575] = sections
  rw [Encoded560_eq, Encoded561_eq, Encoded562_eq, Encoded563_eq, Encoded564_eq, Encoded565_eq, Encoded566_eq, Encoded567_eq, Encoded568_eq, Encoded569_eq, Encoded570_eq, Encoded571_eq, Encoded572_eq, Encoded573_eq, Encoded574_eq, Encoded575_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.EncodedChunk560_575
