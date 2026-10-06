import InitE.BackendStages.FilteredChunk864_879
import InitE.BackendStages.Encoded864
import InitE.BackendStages.Encoded865
import InitE.BackendStages.Encoded866
import InitE.BackendStages.Encoded867
import InitE.BackendStages.Encoded868
import InitE.BackendStages.Encoded869
import InitE.BackendStages.Encoded870
import InitE.BackendStages.Encoded871
import InitE.BackendStages.Encoded872
import InitE.BackendStages.Encoded873
import InitE.BackendStages.Encoded874
import InitE.BackendStages.Encoded875
import InitE.BackendStages.Encoded876
import InitE.BackendStages.Encoded877
import InitE.BackendStages.Encoded878
import InitE.BackendStages.Encoded879
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.EncodedChunk864_879
def sections : LabSem.LabProgHOL 64 := [Encoded864, Encoded865, Encoded866, Encoded867, Encoded868, Encoded869, Encoded870, Encoded871, Encoded872, Encoded873, Encoded874, Encoded875, Encoded876, Encoded877, Encoded878, Encoded879]
theorem compiled_eq : FilteredChunk864_879.sections.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections := by
  change [LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered864, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered865, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered866, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered867, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered868, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered869, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered870, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered871, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered872, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered873, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered874, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered875, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered876, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered877, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered878, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered879] = sections
  rw [Encoded864_eq, Encoded865_eq, Encoded866_eq, Encoded867_eq, Encoded868_eq, Encoded869_eq, Encoded870_eq, Encoded871_eq, Encoded872_eq, Encoded873_eq, Encoded874_eq, Encoded875_eq, Encoded876_eq, Encoded877_eq, Encoded878_eq, Encoded879_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.EncodedChunk864_879
