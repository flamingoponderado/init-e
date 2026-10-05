import InitE.BackendStages.FilteredChunk128_143
import InitE.BackendStages.Encoded128
import InitE.BackendStages.Encoded129
import InitE.BackendStages.Encoded130
import InitE.BackendStages.Encoded131
import InitE.BackendStages.Encoded132
import InitE.BackendStages.Encoded133
import InitE.BackendStages.Encoded134
import InitE.BackendStages.Encoded135
import InitE.BackendStages.Encoded136
import InitE.BackendStages.Encoded137
import InitE.BackendStages.Encoded138
import InitE.BackendStages.Encoded139
import InitE.BackendStages.Encoded140
import InitE.BackendStages.Encoded141
import InitE.BackendStages.Encoded142
import InitE.BackendStages.Encoded143
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.EncodedChunk128_143
def sections : LabSem.LabProgHOL 64 := [Encoded128, Encoded129, Encoded130, Encoded131, Encoded132, Encoded133, Encoded134, Encoded135, Encoded136, Encoded137, Encoded138, Encoded139, Encoded140, Encoded141, Encoded142, Encoded143]
theorem compiled_eq : FilteredChunk128_143.sections.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections := by
  change [LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered128, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered129, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered130, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered131, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered132, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered133, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered134, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered135, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered136, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered137, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered138, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered139, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered140, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered141, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered142, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered143] = sections
  rw [Encoded128_eq, Encoded129_eq, Encoded130_eq, Encoded131_eq, Encoded132_eq, Encoded133_eq, Encoded134_eq, Encoded135_eq, Encoded136_eq, Encoded137_eq, Encoded138_eq, Encoded139_eq, Encoded140_eq, Encoded141_eq, Encoded142_eq, Encoded143_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.EncodedChunk128_143
