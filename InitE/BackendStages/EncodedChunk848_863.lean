import InitE.BackendStages.FilteredChunk848_863
import InitE.BackendStages.Encoded848
import InitE.BackendStages.Encoded849
import InitE.BackendStages.Encoded850
import InitE.BackendStages.Encoded851
import InitE.BackendStages.Encoded852
import InitE.BackendStages.Encoded853
import InitE.BackendStages.Encoded854
import InitE.BackendStages.Encoded855
import InitE.BackendStages.Encoded856
import InitE.BackendStages.Encoded857
import InitE.BackendStages.Encoded858
import InitE.BackendStages.Encoded859
import InitE.BackendStages.Encoded860
import InitE.BackendStages.Encoded861
import InitE.BackendStages.Encoded862
import InitE.BackendStages.Encoded863
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.EncodedChunk848_863
def sections : LabSem.LabProgHOL 64 := [Encoded848, Encoded849, Encoded850, Encoded851, Encoded852, Encoded853, Encoded854, Encoded855, Encoded856, Encoded857, Encoded858, Encoded859, Encoded860, Encoded861, Encoded862, Encoded863]
theorem compiled_eq : FilteredChunk848_863.sections.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections := by
  change [LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered848, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered849, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered850, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered851, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered852, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered853, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered854, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered855, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered856, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered857, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered858, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered859, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered860, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered861, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered862, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered863] = sections
  rw [Encoded848_eq, Encoded849_eq, Encoded850_eq, Encoded851_eq, Encoded852_eq, Encoded853_eq, Encoded854_eq, Encoded855_eq, Encoded856_eq, Encoded857_eq, Encoded858_eq, Encoded859_eq, Encoded860_eq, Encoded861_eq, Encoded862_eq, Encoded863_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.EncodedChunk848_863
