import InitE.BackendStages.Metadata.Data515
import InitE.BackendStages.Padded515
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem walkStep515 : walkShmemLines Padded515.lines 324804 beforeFfis515 beforeShmem515 = (325416, afterFfis515, afterShmem515) := by
  with_unfolding_all rfl
theorem shmemStep515 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded515 :: rest) 324804 beforeFfis515 beforeShmem515 = LabToTarget.getShmemInfo rest 325416 afterFfis515 afterShmem515 := by
  rw [getShmemInfo_section, walkStep515]
theorem symbolLength515 : LabToTarget.secLength Padded515.lines 0 = 612 := by
  with_unfolding_all rfl
#print axioms shmemStep515
#print axioms symbolLength515
end InitE.BackendStages.Metadata
