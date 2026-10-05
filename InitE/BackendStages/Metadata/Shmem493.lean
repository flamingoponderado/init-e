import InitE.BackendStages.Metadata.Data493
import InitE.BackendStages.Padded493
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem walkStep493 : walkShmemLines Padded493.lines 311260 beforeFfis493 beforeShmem493 = (311284, afterFfis493, afterShmem493) := by
  with_unfolding_all rfl
theorem shmemStep493 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded493 :: rest) 311260 beforeFfis493 beforeShmem493 = LabToTarget.getShmemInfo rest 311284 afterFfis493 afterShmem493 := by
  rw [getShmemInfo_section, walkStep493]
theorem symbolLength493 : LabToTarget.secLength Padded493.lines 0 = 24 := by
  with_unfolding_all rfl
#print axioms shmemStep493
#print axioms symbolLength493
end InitE.BackendStages.Metadata
