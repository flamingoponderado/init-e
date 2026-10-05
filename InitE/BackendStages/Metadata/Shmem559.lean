import InitE.BackendStages.Metadata.Data559
import InitE.BackendStages.Padded559
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem walkStep559 : walkShmemLines Padded559.lines 360396 beforeFfis559 beforeShmem559 = (360780, afterFfis559, afterShmem559) := by
  with_unfolding_all rfl
theorem shmemStep559 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded559 :: rest) 360396 beforeFfis559 beforeShmem559 = LabToTarget.getShmemInfo rest 360780 afterFfis559 afterShmem559 := by
  rw [getShmemInfo_section, walkStep559]
theorem symbolLength559 : LabToTarget.secLength Padded559.lines 0 = 384 := by
  with_unfolding_all rfl
#print axioms shmemStep559
#print axioms symbolLength559
end InitE.BackendStages.Metadata
