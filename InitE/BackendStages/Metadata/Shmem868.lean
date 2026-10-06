import InitE.BackendStages.Metadata.Data868
import InitE.BackendStages.Padded868
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem walkStep868 : walkShmemLines Padded868.lines 865856 beforeFfis868 beforeShmem868 = (865884, afterFfis868, afterShmem868) := by
  with_unfolding_all rfl
theorem shmemStep868 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded868 :: rest) 865856 beforeFfis868 beforeShmem868 = LabToTarget.getShmemInfo rest 865884 afterFfis868 afterShmem868 := by
  rw [getShmemInfo_section, walkStep868]
theorem symbolLength868 : LabToTarget.secLength Padded868.lines 0 = 28 := by
  with_unfolding_all rfl
#print axioms shmemStep868
#print axioms symbolLength868
end InitE.BackendStages.Metadata
