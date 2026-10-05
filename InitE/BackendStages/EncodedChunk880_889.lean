import InitE.BackendStages.FilteredChunk880_889
import InitE.BackendStages.Encoded880
import InitE.BackendStages.Encoded881
import InitE.BackendStages.Encoded882
import InitE.BackendStages.Encoded883
import InitE.BackendStages.Encoded884
import InitE.BackendStages.Encoded885
import InitE.BackendStages.Encoded886
import InitE.BackendStages.Encoded887
import InitE.BackendStages.Encoded888
import InitE.BackendStages.Encoded889
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.EncodedChunk880_889
def sections : LabSem.LabProgHOL 64 := [Encoded880, Encoded881, Encoded882, Encoded883, Encoded884, Encoded885, Encoded886, Encoded887, Encoded888, Encoded889]
theorem compiled_eq : FilteredChunk880_889.sections.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections := by
  change [LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered880, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered881, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered882, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered883, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered884, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered885, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered886, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered887, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered888, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered889] = sections
  rw [Encoded880_eq, Encoded881_eq, Encoded882_eq, Encoded883_eq, Encoded884_eq, Encoded885_eq, Encoded886_eq, Encoded887_eq, Encoded888_eq, Encoded889_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.EncodedChunk880_889
