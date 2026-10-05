import InitE.BackendStages.FilteredChunk400_415
import InitE.BackendStages.Encoded400
import InitE.BackendStages.Encoded401
import InitE.BackendStages.Encoded402
import InitE.BackendStages.Encoded403
import InitE.BackendStages.Encoded404
import InitE.BackendStages.Encoded405
import InitE.BackendStages.Encoded406
import InitE.BackendStages.Encoded407
import InitE.BackendStages.Encoded408
import InitE.BackendStages.Encoded409
import InitE.BackendStages.Encoded410
import InitE.BackendStages.Encoded411
import InitE.BackendStages.Encoded412
import InitE.BackendStages.Encoded413
import InitE.BackendStages.Encoded414
import InitE.BackendStages.Encoded415
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.EncodedChunk400_415
def sections : LabSem.LabProgHOL 64 := [Encoded400, Encoded401, Encoded402, Encoded403, Encoded404, Encoded405, Encoded406, Encoded407, Encoded408, Encoded409, Encoded410, Encoded411, Encoded412, Encoded413, Encoded414, Encoded415]
theorem compiled_eq : FilteredChunk400_415.sections.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections := by
  change [LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered400, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered401, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered402, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered403, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered404, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered405, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered406, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered407, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered408, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered409, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered410, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered411, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered412, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered413, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered414, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered415] = sections
  rw [Encoded400_eq, Encoded401_eq, Encoded402_eq, Encoded403_eq, Encoded404_eq, Encoded405_eq, Encoded406_eq, Encoded407_eq, Encoded408_eq, Encoded409_eq, Encoded410_eq, Encoded411_eq, Encoded412_eq, Encoded413_eq, Encoded414_eq, Encoded415_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.EncodedChunk400_415
