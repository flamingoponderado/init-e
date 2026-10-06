import InitE.BackendStages.FilteredChunk224_239
import InitE.BackendStages.Encoded224
import InitE.BackendStages.Encoded225
import InitE.BackendStages.Encoded226
import InitE.BackendStages.Encoded227
import InitE.BackendStages.Encoded228
import InitE.BackendStages.Encoded229
import InitE.BackendStages.Encoded230
import InitE.BackendStages.Encoded231
import InitE.BackendStages.Encoded232
import InitE.BackendStages.Encoded233
import InitE.BackendStages.Encoded234
import InitE.BackendStages.Encoded235
import InitE.BackendStages.Encoded236
import InitE.BackendStages.Encoded237
import InitE.BackendStages.Encoded238
import InitE.BackendStages.Encoded239
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.EncodedChunk224_239
def sections : LabSem.LabProgHOL 64 := [Encoded224, Encoded225, Encoded226, Encoded227, Encoded228, Encoded229, Encoded230, Encoded231, Encoded232, Encoded233, Encoded234, Encoded235, Encoded236, Encoded237, Encoded238, Encoded239]
theorem compiled_eq : FilteredChunk224_239.sections.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections := by
  change [LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered224, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered225, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered226, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered227, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered228, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered229, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered230, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered231, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered232, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered233, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered234, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered235, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered236, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered237, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered238, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered239] = sections
  rw [Encoded224_eq, Encoded225_eq, Encoded226_eq, Encoded227_eq, Encoded228_eq, Encoded229_eq, Encoded230_eq, Encoded231_eq, Encoded232_eq, Encoded233_eq, Encoded234_eq, Encoded235_eq, Encoded236_eq, Encoded237_eq, Encoded238_eq, Encoded239_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.EncodedChunk224_239
