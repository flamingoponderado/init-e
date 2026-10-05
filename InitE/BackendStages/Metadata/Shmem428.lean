import InitE.BackendStages.Metadata.Data428
import InitE.BackendStages.Padded428
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem walkStep428 : walkShmemLines Padded428.lines 260796 beforeFfis428 beforeShmem428 = (261560, afterFfis428, afterShmem428) := by
  with_unfolding_all rfl
theorem shmemStep428 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded428 :: rest) 260796 beforeFfis428 beforeShmem428 = LabToTarget.getShmemInfo rest 261560 afterFfis428 afterShmem428 := by
  rw [getShmemInfo_section, walkStep428]
theorem symbolLength428 : LabToTarget.secLength Padded428.lines 0 = 764 := by
  with_unfolding_all rfl
#print axioms shmemStep428
#print axioms symbolLength428
end InitE.BackendStages.Metadata
