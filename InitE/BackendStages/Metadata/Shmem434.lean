import InitE.BackendStages.Metadata.Data434
import InitE.BackendStages.Padded434
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem walkStep434 : walkShmemLines Padded434.lines 265516 beforeFfis434 beforeShmem434 = (265920, afterFfis434, afterShmem434) := by
  with_unfolding_all rfl
theorem shmemStep434 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded434 :: rest) 265516 beforeFfis434 beforeShmem434 = LabToTarget.getShmemInfo rest 265920 afterFfis434 afterShmem434 := by
  rw [getShmemInfo_section, walkStep434]
theorem symbolLength434 : LabToTarget.secLength Padded434.lines 0 = 404 := by
  with_unfolding_all rfl
#print axioms shmemStep434
#print axioms symbolLength434
end InitE.BackendStages.Metadata
