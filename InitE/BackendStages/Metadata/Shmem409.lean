import InitE.BackendStages.Metadata.Data409
import InitE.BackendStages.Padded409
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem walkStep409 : walkShmemLines Padded409.lines 251824 beforeFfis409 beforeShmem409 = (252088, afterFfis409, afterShmem409) := by
  with_unfolding_all rfl
theorem shmemStep409 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded409 :: rest) 251824 beforeFfis409 beforeShmem409 = LabToTarget.getShmemInfo rest 252088 afterFfis409 afterShmem409 := by
  rw [getShmemInfo_section, walkStep409]
theorem symbolLength409 : LabToTarget.secLength Padded409.lines 0 = 264 := by
  with_unfolding_all rfl
#print axioms shmemStep409
#print axioms symbolLength409
end InitE.BackendStages.Metadata
