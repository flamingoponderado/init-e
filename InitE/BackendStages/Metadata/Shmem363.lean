import InitE.BackendStages.Metadata.Data363
import InitE.BackendStages.Padded363
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem walkStep363 : walkShmemLines Padded363.lines 222576 beforeFfis363 beforeShmem363 = (224144, afterFfis363, afterShmem363) := by
  with_unfolding_all rfl
theorem shmemStep363 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded363 :: rest) 222576 beforeFfis363 beforeShmem363 = LabToTarget.getShmemInfo rest 224144 afterFfis363 afterShmem363 := by
  rw [getShmemInfo_section, walkStep363]
theorem symbolLength363 : LabToTarget.secLength Padded363.lines 0 = 1568 := by
  with_unfolding_all rfl
#print axioms shmemStep363
#print axioms symbolLength363
end InitE.BackendStages.Metadata
