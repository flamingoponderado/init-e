import InitE.BackendStages.FilteredChunk352_367
import InitE.BackendStages.Encoded352
import InitE.BackendStages.Encoded353
import InitE.BackendStages.Encoded354
import InitE.BackendStages.Encoded355
import InitE.BackendStages.Encoded356
import InitE.BackendStages.Encoded357
import InitE.BackendStages.Encoded358
import InitE.BackendStages.Encoded359
import InitE.BackendStages.Encoded360
import InitE.BackendStages.Encoded361
import InitE.BackendStages.Encoded362
import InitE.BackendStages.Encoded363
import InitE.BackendStages.Encoded364
import InitE.BackendStages.Encoded365
import InitE.BackendStages.Encoded366
import InitE.BackendStages.Encoded367
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.EncodedChunk352_367
def sections : LabSem.LabProgHOL 64 := [Encoded352, Encoded353, Encoded354, Encoded355, Encoded356, Encoded357, Encoded358, Encoded359, Encoded360, Encoded361, Encoded362, Encoded363, Encoded364, Encoded365, Encoded366, Encoded367]
theorem compiled_eq : FilteredChunk352_367.sections.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections := by
  change [LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered352, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered353, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered354, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered355, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered356, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered357, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered358, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered359, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered360, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered361, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered362, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered363, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered364, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered365, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered366, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered367] = sections
  rw [Encoded352_eq, Encoded353_eq, Encoded354_eq, Encoded355_eq, Encoded356_eq, Encoded357_eq, Encoded358_eq, Encoded359_eq, Encoded360_eq, Encoded361_eq, Encoded362_eq, Encoded363_eq, Encoded364_eq, Encoded365_eq, Encoded366_eq, Encoded367_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.EncodedChunk352_367
