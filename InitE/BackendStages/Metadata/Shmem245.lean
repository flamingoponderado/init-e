import InitE.BackendStages.Metadata.Data245
import InitE.BackendStages.Padded245
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem walkStep245 : walkShmemLines Padded245.lines 123640 beforeFfis245 beforeShmem245 = (124176, afterFfis245, afterShmem245) := by
  with_unfolding_all rfl
theorem shmemStep245 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded245 :: rest) 123640 beforeFfis245 beforeShmem245 = LabToTarget.getShmemInfo rest 124176 afterFfis245 afterShmem245 := by
  rw [getShmemInfo_section, walkStep245]
theorem symbolLength245 : LabToTarget.secLength Padded245.lines 0 = 536 := by
  with_unfolding_all rfl
#print axioms shmemStep245
#print axioms symbolLength245
end InitE.BackendStages.Metadata
