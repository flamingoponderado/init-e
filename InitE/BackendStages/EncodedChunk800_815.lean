import InitE.BackendStages.FilteredChunk800_815
import InitE.BackendStages.Encoded800
import InitE.BackendStages.Encoded801
import InitE.BackendStages.Encoded802
import InitE.BackendStages.Encoded803
import InitE.BackendStages.Encoded804
import InitE.BackendStages.Encoded805
import InitE.BackendStages.Encoded806
import InitE.BackendStages.Encoded807
import InitE.BackendStages.Encoded808
import InitE.BackendStages.Encoded809
import InitE.BackendStages.Encoded810
import InitE.BackendStages.Encoded811
import InitE.BackendStages.Encoded812
import InitE.BackendStages.Encoded813
import InitE.BackendStages.Encoded814
import InitE.BackendStages.Encoded815
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.EncodedChunk800_815
def sections : LabSem.LabProgHOL 64 := [Encoded800, Encoded801, Encoded802, Encoded803, Encoded804, Encoded805, Encoded806, Encoded807, Encoded808, Encoded809, Encoded810, Encoded811, Encoded812, Encoded813, Encoded814, Encoded815]
theorem compiled_eq : FilteredChunk800_815.sections.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections := by
  change [LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered800, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered801, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered802, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered803, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered804, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered805, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered806, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered807, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered808, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered809, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered810, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered811, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered812, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered813, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered814, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered815] = sections
  rw [Encoded800_eq, Encoded801_eq, Encoded802_eq, Encoded803_eq, Encoded804_eq, Encoded805_eq, Encoded806_eq, Encoded807_eq, Encoded808_eq, Encoded809_eq, Encoded810_eq, Encoded811_eq, Encoded812_eq, Encoded813_eq, Encoded814_eq, Encoded815_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.EncodedChunk800_815
