import InitE.BackendStages.FilteredChunk176_191
import InitE.BackendStages.Encoded176
import InitE.BackendStages.Encoded177
import InitE.BackendStages.Encoded178
import InitE.BackendStages.Encoded179
import InitE.BackendStages.Encoded180
import InitE.BackendStages.Encoded181
import InitE.BackendStages.Encoded182
import InitE.BackendStages.Encoded183
import InitE.BackendStages.Encoded184
import InitE.BackendStages.Encoded185
import InitE.BackendStages.Encoded186
import InitE.BackendStages.Encoded187
import InitE.BackendStages.Encoded188
import InitE.BackendStages.Encoded189
import InitE.BackendStages.Encoded190
import InitE.BackendStages.Encoded191
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.EncodedChunk176_191
def sections : LabSem.LabProgHOL 64 := [Encoded176, Encoded177, Encoded178, Encoded179, Encoded180, Encoded181, Encoded182, Encoded183, Encoded184, Encoded185, Encoded186, Encoded187, Encoded188, Encoded189, Encoded190, Encoded191]
theorem compiled_eq : FilteredChunk176_191.sections.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections := by
  change [LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered176, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered177, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered178, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered179, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered180, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered181, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered182, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered183, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered184, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered185, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered186, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered187, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered188, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered189, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered190, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered191] = sections
  rw [Encoded176_eq, Encoded177_eq, Encoded178_eq, Encoded179_eq, Encoded180_eq, Encoded181_eq, Encoded182_eq, Encoded183_eq, Encoded184_eq, Encoded185_eq, Encoded186_eq, Encoded187_eq, Encoded188_eq, Encoded189_eq, Encoded190_eq, Encoded191_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.EncodedChunk176_191
