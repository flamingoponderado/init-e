import InitE.BackendStages.Metadata.Data555
import InitE.BackendStages.Padded555
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem walkStep555 : walkShmemLines Padded555.lines 358020 beforeFfis555 beforeShmem555 = (358500, afterFfis555, afterShmem555) := by
  with_unfolding_all rfl
theorem shmemStep555 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded555 :: rest) 358020 beforeFfis555 beforeShmem555 = LabToTarget.getShmemInfo rest 358500 afterFfis555 afterShmem555 := by
  rw [getShmemInfo_section, walkStep555]
theorem symbolLength555 : LabToTarget.secLength Padded555.lines 0 = 480 := by
  with_unfolding_all rfl
#print axioms shmemStep555
#print axioms symbolLength555
end InitE.BackendStages.Metadata
