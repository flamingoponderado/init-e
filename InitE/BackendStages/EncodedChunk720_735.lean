import InitE.BackendStages.FilteredChunk720_735
import InitE.BackendStages.Encoded720
import InitE.BackendStages.Encoded721
import InitE.BackendStages.Encoded722
import InitE.BackendStages.Encoded723
import InitE.BackendStages.Encoded724
import InitE.BackendStages.Encoded725
import InitE.BackendStages.Encoded726
import InitE.BackendStages.Encoded727
import InitE.BackendStages.Encoded728
import InitE.BackendStages.Encoded729
import InitE.BackendStages.Encoded730
import InitE.BackendStages.Encoded731
import InitE.BackendStages.Encoded732
import InitE.BackendStages.Encoded733
import InitE.BackendStages.Encoded734
import InitE.BackendStages.Encoded735
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.EncodedChunk720_735
def sections : LabSem.LabProgHOL 64 := [Encoded720, Encoded721, Encoded722, Encoded723, Encoded724, Encoded725, Encoded726, Encoded727, Encoded728, Encoded729, Encoded730, Encoded731, Encoded732, Encoded733, Encoded734, Encoded735]
theorem compiled_eq : FilteredChunk720_735.sections.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections := by
  change [LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered720, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered721, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered722, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered723, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered724, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered725, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered726, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered727, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered728, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered729, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered730, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered731, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered732, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered733, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered734, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered735] = sections
  rw [Encoded720_eq, Encoded721_eq, Encoded722_eq, Encoded723_eq, Encoded724_eq, Encoded725_eq, Encoded726_eq, Encoded727_eq, Encoded728_eq, Encoded729_eq, Encoded730_eq, Encoded731_eq, Encoded732_eq, Encoded733_eq, Encoded734_eq, Encoded735_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.EncodedChunk720_735
