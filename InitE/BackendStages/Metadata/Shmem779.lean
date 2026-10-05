import InitE.BackendStages.Metadata.Data779
import InitE.BackendStages.Padded779
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem walkStep779 : walkShmemLines Padded779.lines 689136 beforeFfis779 beforeShmem779 = (689168, afterFfis779, afterShmem779) := by
  with_unfolding_all rfl
theorem shmemStep779 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded779 :: rest) 689136 beforeFfis779 beforeShmem779 = LabToTarget.getShmemInfo rest 689168 afterFfis779 afterShmem779 := by
  rw [getShmemInfo_section, walkStep779]
theorem symbolLength779 : LabToTarget.secLength Padded779.lines 0 = 32 := by
  with_unfolding_all rfl
#print axioms shmemStep779
#print axioms symbolLength779
end InitE.BackendStages.Metadata
