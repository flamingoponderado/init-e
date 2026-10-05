import InitE.BackendStages.Metadata.Data586
import InitE.BackendStages.Padded586
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem walkStep586 : walkShmemLines Padded586.lines 380544 beforeFfis586 beforeShmem586 = (382568, afterFfis586, afterShmem586) := by
  with_unfolding_all rfl
theorem shmemStep586 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded586 :: rest) 380544 beforeFfis586 beforeShmem586 = LabToTarget.getShmemInfo rest 382568 afterFfis586 afterShmem586 := by
  rw [getShmemInfo_section, walkStep586]
theorem symbolLength586 : LabToTarget.secLength Padded586.lines 0 = 2024 := by
  with_unfolding_all rfl
#print axioms shmemStep586
#print axioms symbolLength586
end InitE.BackendStages.Metadata
