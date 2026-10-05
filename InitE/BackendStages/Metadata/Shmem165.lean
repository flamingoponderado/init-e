import InitE.BackendStages.Metadata.Data165
import InitE.BackendStages.Padded165
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem walkStep165 : walkShmemLines Padded165.lines 44240 beforeFfis165 beforeShmem165 = (44780, afterFfis165, afterShmem165) := by
  with_unfolding_all rfl
theorem shmemStep165 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded165 :: rest) 44240 beforeFfis165 beforeShmem165 = LabToTarget.getShmemInfo rest 44780 afterFfis165 afterShmem165 := by
  rw [getShmemInfo_section, walkStep165]
theorem symbolLength165 : LabToTarget.secLength Padded165.lines 0 = 540 := by
  with_unfolding_all rfl
#print axioms shmemStep165
#print axioms symbolLength165
end InitE.BackendStages.Metadata
