import InitE.BackendStages.Metadata.Data415
import InitE.BackendStages.Padded415
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem walkStep415 : walkShmemLines Padded415.lines 255232 beforeFfis415 beforeShmem415 = (255396, afterFfis415, afterShmem415) := by
  with_unfolding_all rfl
theorem shmemStep415 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded415 :: rest) 255232 beforeFfis415 beforeShmem415 = LabToTarget.getShmemInfo rest 255396 afterFfis415 afterShmem415 := by
  rw [getShmemInfo_section, walkStep415]
theorem symbolLength415 : LabToTarget.secLength Padded415.lines 0 = 164 := by
  with_unfolding_all rfl
#print axioms shmemStep415
#print axioms symbolLength415
end InitE.BackendStages.Metadata
