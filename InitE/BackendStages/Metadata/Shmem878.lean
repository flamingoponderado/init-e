import InitE.BackendStages.Metadata.Data878
import InitE.BackendStages.Padded878
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem walkStep878 : walkShmemLines Padded878.lines 890908 beforeFfis878 beforeShmem878 = (891312, afterFfis878, afterShmem878) := by
  with_unfolding_all rfl
theorem shmemStep878 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded878 :: rest) 890908 beforeFfis878 beforeShmem878 = LabToTarget.getShmemInfo rest 891312 afterFfis878 afterShmem878 := by
  rw [getShmemInfo_section, walkStep878]
theorem symbolLength878 : LabToTarget.secLength Padded878.lines 0 = 404 := by
  with_unfolding_all rfl
#print axioms shmemStep878
#print axioms symbolLength878
end InitE.BackendStages.Metadata
