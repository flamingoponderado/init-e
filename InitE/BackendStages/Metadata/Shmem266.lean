import InitE.BackendStages.Metadata.Data266
import InitE.BackendStages.Padded266
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem walkStep266 : walkShmemLines Padded266.lines 147400 beforeFfis266 beforeShmem266 = (148160, afterFfis266, afterShmem266) := by
  with_unfolding_all rfl
theorem shmemStep266 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded266 :: rest) 147400 beforeFfis266 beforeShmem266 = LabToTarget.getShmemInfo rest 148160 afterFfis266 afterShmem266 := by
  rw [getShmemInfo_section, walkStep266]
theorem symbolLength266 : LabToTarget.secLength Padded266.lines 0 = 760 := by
  with_unfolding_all rfl
#print axioms shmemStep266
#print axioms symbolLength266
end InitE.BackendStages.Metadata
