import InitE.BackendStages.Metadata.Data348
import InitE.BackendStages.Padded348
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem walkStep348 : walkShmemLines Padded348.lines 220828 beforeFfis348 beforeShmem348 = (220996, afterFfis348, afterShmem348) := by
  with_unfolding_all rfl
theorem shmemStep348 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded348 :: rest) 220828 beforeFfis348 beforeShmem348 = LabToTarget.getShmemInfo rest 220996 afterFfis348 afterShmem348 := by
  rw [getShmemInfo_section, walkStep348]
theorem symbolLength348 : LabToTarget.secLength Padded348.lines 0 = 168 := by
  with_unfolding_all rfl
#print axioms shmemStep348
#print axioms symbolLength348
end InitE.BackendStages.Metadata
