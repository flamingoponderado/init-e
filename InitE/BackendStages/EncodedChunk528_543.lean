import InitE.BackendStages.FilteredChunk528_543
import InitE.BackendStages.Encoded528
import InitE.BackendStages.Encoded529
import InitE.BackendStages.Encoded530
import InitE.BackendStages.Encoded531
import InitE.BackendStages.Encoded532
import InitE.BackendStages.Encoded533
import InitE.BackendStages.Encoded534
import InitE.BackendStages.Encoded535
import InitE.BackendStages.Encoded536
import InitE.BackendStages.Encoded537
import InitE.BackendStages.Encoded538
import InitE.BackendStages.Encoded539
import InitE.BackendStages.Encoded540
import InitE.BackendStages.Encoded541
import InitE.BackendStages.Encoded542
import InitE.BackendStages.Encoded543
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.EncodedChunk528_543
def sections : LabSem.LabProgHOL 64 := [Encoded528, Encoded529, Encoded530, Encoded531, Encoded532, Encoded533, Encoded534, Encoded535, Encoded536, Encoded537, Encoded538, Encoded539, Encoded540, Encoded541, Encoded542, Encoded543]
theorem compiled_eq : FilteredChunk528_543.sections.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections := by
  change [LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered528, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered529, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered530, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered531, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered532, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered533, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered534, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered535, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered536, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered537, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered538, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered539, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered540, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered541, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered542, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered543] = sections
  rw [Encoded528_eq, Encoded529_eq, Encoded530_eq, Encoded531_eq, Encoded532_eq, Encoded533_eq, Encoded534_eq, Encoded535_eq, Encoded536_eq, Encoded537_eq, Encoded538_eq, Encoded539_eq, Encoded540_eq, Encoded541_eq, Encoded542_eq, Encoded543_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.EncodedChunk528_543
