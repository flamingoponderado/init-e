import InitE.BackendStages.Metadata.Data564
import InitE.BackendStages.Padded564
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem walkStep564 : walkShmemLines Padded564.lines 364672 beforeFfis564 beforeShmem564 = (365040, afterFfis564, afterShmem564) := by
  with_unfolding_all rfl
theorem shmemStep564 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded564 :: rest) 364672 beforeFfis564 beforeShmem564 = LabToTarget.getShmemInfo rest 365040 afterFfis564 afterShmem564 := by
  rw [getShmemInfo_section, walkStep564]
theorem symbolLength564 : LabToTarget.secLength Padded564.lines 0 = 368 := by
  with_unfolding_all rfl
#print axioms shmemStep564
#print axioms symbolLength564
end InitE.BackendStages.Metadata
