import InitE.BackendStages.Metadata.Data124
import InitE.BackendStages.Padded124
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem walkStep124 : walkShmemLines Padded124.lines 18680 beforeFfis124 beforeShmem124 = (18876, afterFfis124, afterShmem124) := by
  with_unfolding_all rfl
theorem shmemStep124 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded124 :: rest) 18680 beforeFfis124 beforeShmem124 = LabToTarget.getShmemInfo rest 18876 afterFfis124 afterShmem124 := by
  rw [getShmemInfo_section, walkStep124]
theorem symbolLength124 : LabToTarget.secLength Padded124.lines 0 = 196 := by
  with_unfolding_all rfl
#print axioms shmemStep124
#print axioms symbolLength124
end InitE.BackendStages.Metadata
