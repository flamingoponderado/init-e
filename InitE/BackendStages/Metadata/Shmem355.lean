import InitE.BackendStages.Metadata.Data355
import InitE.BackendStages.Padded355
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem walkStep355 : walkShmemLines Padded355.lines 221100 beforeFfis355 beforeShmem355 = (221124, afterFfis355, afterShmem355) := by
  with_unfolding_all rfl
theorem shmemStep355 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded355 :: rest) 221100 beforeFfis355 beforeShmem355 = LabToTarget.getShmemInfo rest 221124 afterFfis355 afterShmem355 := by
  rw [getShmemInfo_section, walkStep355]
theorem symbolLength355 : LabToTarget.secLength Padded355.lines 0 = 24 := by
  with_unfolding_all rfl
#print axioms shmemStep355
#print axioms symbolLength355
end InitE.BackendStages.Metadata
