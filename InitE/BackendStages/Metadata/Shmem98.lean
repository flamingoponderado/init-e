import InitE.BackendStages.Metadata.Data98
import InitE.BackendStages.Padded98
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem walkStep98 : walkShmemLines Padded98.lines 10812 beforeFfis98 beforeShmem98 = (11008, afterFfis98, afterShmem98) := by
  with_unfolding_all rfl
theorem shmemStep98 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded98 :: rest) 10812 beforeFfis98 beforeShmem98 = LabToTarget.getShmemInfo rest 11008 afterFfis98 afterShmem98 := by
  rw [getShmemInfo_section, walkStep98]
theorem symbolLength98 : LabToTarget.secLength Padded98.lines 0 = 196 := by
  with_unfolding_all rfl
#print axioms shmemStep98
#print axioms symbolLength98
end InitE.BackendStages.Metadata
