import InitE.BackendStages.FilteredChunk464_479
import InitE.BackendStages.Encoded464
import InitE.BackendStages.Encoded465
import InitE.BackendStages.Encoded466
import InitE.BackendStages.Encoded467
import InitE.BackendStages.Encoded468
import InitE.BackendStages.Encoded469
import InitE.BackendStages.Encoded470
import InitE.BackendStages.Encoded471
import InitE.BackendStages.Encoded472
import InitE.BackendStages.Encoded473
import InitE.BackendStages.Encoded474
import InitE.BackendStages.Encoded475
import InitE.BackendStages.Encoded476
import InitE.BackendStages.Encoded477
import InitE.BackendStages.Encoded478
import InitE.BackendStages.Encoded479
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.EncodedChunk464_479
def sections : LabSem.LabProgHOL 64 := [Encoded464, Encoded465, Encoded466, Encoded467, Encoded468, Encoded469, Encoded470, Encoded471, Encoded472, Encoded473, Encoded474, Encoded475, Encoded476, Encoded477, Encoded478, Encoded479]
theorem compiled_eq : FilteredChunk464_479.sections.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections := by
  change [LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered464, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered465, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered466, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered467, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered468, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered469, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered470, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered471, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered472, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered473, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered474, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered475, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered476, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered477, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered478, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered479] = sections
  rw [Encoded464_eq, Encoded465_eq, Encoded466_eq, Encoded467_eq, Encoded468_eq, Encoded469_eq, Encoded470_eq, Encoded471_eq, Encoded472_eq, Encoded473_eq, Encoded474_eq, Encoded475_eq, Encoded476_eq, Encoded477_eq, Encoded478_eq, Encoded479_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.EncodedChunk464_479
