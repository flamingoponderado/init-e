import InitE.BackendStages.Metadata.Data357
import InitE.BackendStages.Padded357
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem walkStep357 : walkShmemLines Padded357.lines 221152 beforeFfis357 beforeShmem357 = (221160, afterFfis357, afterShmem357) := by
  with_unfolding_all rfl
theorem shmemStep357 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded357 :: rest) 221152 beforeFfis357 beforeShmem357 = LabToTarget.getShmemInfo rest 221160 afterFfis357 afterShmem357 := by
  rw [getShmemInfo_section, walkStep357]
theorem symbolLength357 : LabToTarget.secLength Padded357.lines 0 = 8 := by
  with_unfolding_all rfl
#print axioms shmemStep357
#print axioms symbolLength357
end InitE.BackendStages.Metadata
