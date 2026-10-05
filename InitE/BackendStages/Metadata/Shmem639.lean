import InitE.BackendStages.Metadata.Data639
import InitE.BackendStages.Padded639
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem walkStep639 : walkShmemLines Padded639.lines 475240 beforeFfis639 beforeShmem639 = (477916, afterFfis639, afterShmem639) := by
  with_unfolding_all rfl
theorem shmemStep639 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded639 :: rest) 475240 beforeFfis639 beforeShmem639 = LabToTarget.getShmemInfo rest 477916 afterFfis639 afterShmem639 := by
  rw [getShmemInfo_section, walkStep639]
theorem symbolLength639 : LabToTarget.secLength Padded639.lines 0 = 2676 := by
  with_unfolding_all rfl
#print axioms shmemStep639
#print axioms symbolLength639
end InitE.BackendStages.Metadata
