import InitE.BackendStages.FilteredChunk768_783
import InitE.BackendStages.Encoded768
import InitE.BackendStages.Encoded769
import InitE.BackendStages.Encoded770
import InitE.BackendStages.Encoded771
import InitE.BackendStages.Encoded772
import InitE.BackendStages.Encoded773
import InitE.BackendStages.Encoded774
import InitE.BackendStages.Encoded775
import InitE.BackendStages.Encoded776
import InitE.BackendStages.Encoded777
import InitE.BackendStages.Encoded778
import InitE.BackendStages.Encoded779
import InitE.BackendStages.Encoded780
import InitE.BackendStages.Encoded781
import InitE.BackendStages.Encoded782
import InitE.BackendStages.Encoded783
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.EncodedChunk768_783
def sections : LabSem.LabProgHOL 64 := [Encoded768, Encoded769, Encoded770, Encoded771, Encoded772, Encoded773, Encoded774, Encoded775, Encoded776, Encoded777, Encoded778, Encoded779, Encoded780, Encoded781, Encoded782, Encoded783]
theorem compiled_eq : FilteredChunk768_783.sections.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections := by
  change [LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered768, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered769, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered770, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered771, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered772, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered773, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered774, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered775, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered776, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered777, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered778, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered779, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered780, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered781, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered782, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered783] = sections
  rw [Encoded768_eq, Encoded769_eq, Encoded770_eq, Encoded771_eq, Encoded772_eq, Encoded773_eq, Encoded774_eq, Encoded775_eq, Encoded776_eq, Encoded777_eq, Encoded778_eq, Encoded779_eq, Encoded780_eq, Encoded781_eq, Encoded782_eq, Encoded783_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.EncodedChunk768_783
