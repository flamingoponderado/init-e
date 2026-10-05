import InitE.BackendStages.FilteredChunk496_511
import InitE.BackendStages.Encoded496
import InitE.BackendStages.Encoded497
import InitE.BackendStages.Encoded498
import InitE.BackendStages.Encoded499
import InitE.BackendStages.Encoded500
import InitE.BackendStages.Encoded501
import InitE.BackendStages.Encoded502
import InitE.BackendStages.Encoded503
import InitE.BackendStages.Encoded504
import InitE.BackendStages.Encoded505
import InitE.BackendStages.Encoded506
import InitE.BackendStages.Encoded507
import InitE.BackendStages.Encoded508
import InitE.BackendStages.Encoded509
import InitE.BackendStages.Encoded510
import InitE.BackendStages.Encoded511
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.EncodedChunk496_511
def sections : LabSem.LabProgHOL 64 := [Encoded496, Encoded497, Encoded498, Encoded499, Encoded500, Encoded501, Encoded502, Encoded503, Encoded504, Encoded505, Encoded506, Encoded507, Encoded508, Encoded509, Encoded510, Encoded511]
theorem compiled_eq : FilteredChunk496_511.sections.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections := by
  change [LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered496, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered497, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered498, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered499, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered500, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered501, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered502, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered503, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered504, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered505, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered506, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered507, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered508, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered509, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered510, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered511] = sections
  rw [Encoded496_eq, Encoded497_eq, Encoded498_eq, Encoded499_eq, Encoded500_eq, Encoded501_eq, Encoded502_eq, Encoded503_eq, Encoded504_eq, Encoded505_eq, Encoded506_eq, Encoded507_eq, Encoded508_eq, Encoded509_eq, Encoded510_eq, Encoded511_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.EncodedChunk496_511
