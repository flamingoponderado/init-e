import InitE.BackendStages.FilteredChunk512_527
import InitE.BackendStages.Encoded512
import InitE.BackendStages.Encoded513
import InitE.BackendStages.Encoded514
import InitE.BackendStages.Encoded515
import InitE.BackendStages.Encoded516
import InitE.BackendStages.Encoded517
import InitE.BackendStages.Encoded518
import InitE.BackendStages.Encoded519
import InitE.BackendStages.Encoded520
import InitE.BackendStages.Encoded521
import InitE.BackendStages.Encoded522
import InitE.BackendStages.Encoded523
import InitE.BackendStages.Encoded524
import InitE.BackendStages.Encoded525
import InitE.BackendStages.Encoded526
import InitE.BackendStages.Encoded527
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.EncodedChunk512_527
def sections : LabSem.LabProgHOL 64 := [Encoded512, Encoded513, Encoded514, Encoded515, Encoded516, Encoded517, Encoded518, Encoded519, Encoded520, Encoded521, Encoded522, Encoded523, Encoded524, Encoded525, Encoded526, Encoded527]
theorem compiled_eq : FilteredChunk512_527.sections.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections := by
  change [LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered512, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered513, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered514, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered515, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered516, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered517, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered518, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered519, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered520, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered521, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered522, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered523, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered524, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered525, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered526, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered527] = sections
  rw [Encoded512_eq, Encoded513_eq, Encoded514_eq, Encoded515_eq, Encoded516_eq, Encoded517_eq, Encoded518_eq, Encoded519_eq, Encoded520_eq, Encoded521_eq, Encoded522_eq, Encoded523_eq, Encoded524_eq, Encoded525_eq, Encoded526_eq, Encoded527_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.EncodedChunk512_527
