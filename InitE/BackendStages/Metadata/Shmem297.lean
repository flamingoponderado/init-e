import InitE.BackendStages.Metadata.Data297
import InitE.BackendStages.Padded297
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem walkStep297 : walkShmemLines Padded297.lines 177196 beforeFfis297 beforeShmem297 = (177400, afterFfis297, afterShmem297) := by
  with_unfolding_all rfl
theorem shmemStep297 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded297 :: rest) 177196 beforeFfis297 beforeShmem297 = LabToTarget.getShmemInfo rest 177400 afterFfis297 afterShmem297 := by
  rw [getShmemInfo_section, walkStep297]
theorem symbolLength297 : LabToTarget.secLength Padded297.lines 0 = 204 := by
  with_unfolding_all rfl
#print axioms shmemStep297
#print axioms symbolLength297
end InitE.BackendStages.Metadata
