import InitE.BackendStages.FilteredChunk784_799
import InitE.BackendStages.Encoded784
import InitE.BackendStages.Encoded785
import InitE.BackendStages.Encoded786
import InitE.BackendStages.Encoded787
import InitE.BackendStages.Encoded788
import InitE.BackendStages.Encoded789
import InitE.BackendStages.Encoded790
import InitE.BackendStages.Encoded791
import InitE.BackendStages.Encoded792
import InitE.BackendStages.Encoded793
import InitE.BackendStages.Encoded794
import InitE.BackendStages.Encoded795
import InitE.BackendStages.Encoded796
import InitE.BackendStages.Encoded797
import InitE.BackendStages.Encoded798
import InitE.BackendStages.Encoded799
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.EncodedChunk784_799
def sections : LabSem.LabProgHOL 64 := [Encoded784, Encoded785, Encoded786, Encoded787, Encoded788, Encoded789, Encoded790, Encoded791, Encoded792, Encoded793, Encoded794, Encoded795, Encoded796, Encoded797, Encoded798, Encoded799]
theorem compiled_eq : FilteredChunk784_799.sections.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections := by
  change [LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered784, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered785, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered786, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered787, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered788, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered789, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered790, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered791, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered792, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered793, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered794, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered795, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered796, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered797, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered798, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered799] = sections
  rw [Encoded784_eq, Encoded785_eq, Encoded786_eq, Encoded787_eq, Encoded788_eq, Encoded789_eq, Encoded790_eq, Encoded791_eq, Encoded792_eq, Encoded793_eq, Encoded794_eq, Encoded795_eq, Encoded796_eq, Encoded797_eq, Encoded798_eq, Encoded799_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.EncodedChunk784_799
