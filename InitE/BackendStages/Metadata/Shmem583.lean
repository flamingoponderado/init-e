import InitE.BackendStages.Metadata.Data583
import InitE.BackendStages.Padded583
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem walkStep583 : walkShmemLines Padded583.lines 379012 beforeFfis583 beforeShmem583 = (379484, afterFfis583, afterShmem583) := by
  with_unfolding_all rfl
theorem shmemStep583 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded583 :: rest) 379012 beforeFfis583 beforeShmem583 = LabToTarget.getShmemInfo rest 379484 afterFfis583 afterShmem583 := by
  rw [getShmemInfo_section, walkStep583]
theorem symbolLength583 : LabToTarget.secLength Padded583.lines 0 = 472 := by
  with_unfolding_all rfl
#print axioms shmemStep583
#print axioms symbolLength583
end InitE.BackendStages.Metadata
