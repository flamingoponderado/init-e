import InitE.BackendStages.Metadata.Data154
import InitE.BackendStages.Padded154
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem walkStep154 : walkShmemLines Padded154.lines 35720 beforeFfis154 beforeShmem154 = (36824, afterFfis154, afterShmem154) := by
  with_unfolding_all rfl
theorem shmemStep154 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded154 :: rest) 35720 beforeFfis154 beforeShmem154 = LabToTarget.getShmemInfo rest 36824 afterFfis154 afterShmem154 := by
  rw [getShmemInfo_section, walkStep154]
theorem symbolLength154 : LabToTarget.secLength Padded154.lines 0 = 1104 := by
  with_unfolding_all rfl
#print axioms shmemStep154
#print axioms symbolLength154
end InitE.BackendStages.Metadata
