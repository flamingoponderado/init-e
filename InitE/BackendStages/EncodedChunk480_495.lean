import InitE.BackendStages.FilteredChunk480_495
import InitE.BackendStages.Encoded480
import InitE.BackendStages.Encoded481
import InitE.BackendStages.Encoded482
import InitE.BackendStages.Encoded483
import InitE.BackendStages.Encoded484
import InitE.BackendStages.Encoded485
import InitE.BackendStages.Encoded486
import InitE.BackendStages.Encoded487
import InitE.BackendStages.Encoded488
import InitE.BackendStages.Encoded489
import InitE.BackendStages.Encoded490
import InitE.BackendStages.Encoded491
import InitE.BackendStages.Encoded492
import InitE.BackendStages.Encoded493
import InitE.BackendStages.Encoded494
import InitE.BackendStages.Encoded495
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.EncodedChunk480_495
def sections : LabSem.LabProgHOL 64 := [Encoded480, Encoded481, Encoded482, Encoded483, Encoded484, Encoded485, Encoded486, Encoded487, Encoded488, Encoded489, Encoded490, Encoded491, Encoded492, Encoded493, Encoded494, Encoded495]
theorem compiled_eq : FilteredChunk480_495.sections.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections := by
  change [LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered480, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered481, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered482, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered483, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered484, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered485, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered486, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered487, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered488, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered489, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered490, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered491, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered492, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered493, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered494, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered495] = sections
  rw [Encoded480_eq, Encoded481_eq, Encoded482_eq, Encoded483_eq, Encoded484_eq, Encoded485_eq, Encoded486_eq, Encoded487_eq, Encoded488_eq, Encoded489_eq, Encoded490_eq, Encoded491_eq, Encoded492_eq, Encoded493_eq, Encoded494_eq, Encoded495_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.EncodedChunk480_495
