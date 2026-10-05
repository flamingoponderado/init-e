import InitE.BackendStages.Metadata.Data395
import InitE.BackendStages.Padded395
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem walkStep395 : walkShmemLines Padded395.lines 245788 beforeFfis395 beforeShmem395 = (246068, afterFfis395, afterShmem395) := by
  with_unfolding_all rfl
theorem shmemStep395 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded395 :: rest) 245788 beforeFfis395 beforeShmem395 = LabToTarget.getShmemInfo rest 246068 afterFfis395 afterShmem395 := by
  rw [getShmemInfo_section, walkStep395]
theorem symbolLength395 : LabToTarget.secLength Padded395.lines 0 = 280 := by
  with_unfolding_all rfl
#print axioms shmemStep395
#print axioms symbolLength395
end InitE.BackendStages.Metadata
