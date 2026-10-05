import InitE.BackendStages.Metadata.Data802
import InitE.BackendStages.Padded802
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem walkStep802 : walkShmemLines Padded802.lines 735136 beforeFfis802 beforeShmem802 = (740796, afterFfis802, afterShmem802) := by
  with_unfolding_all rfl
theorem shmemStep802 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded802 :: rest) 735136 beforeFfis802 beforeShmem802 = LabToTarget.getShmemInfo rest 740796 afterFfis802 afterShmem802 := by
  rw [getShmemInfo_section, walkStep802]
theorem symbolLength802 : LabToTarget.secLength Padded802.lines 0 = 5660 := by
  with_unfolding_all rfl
#print axioms shmemStep802
#print axioms symbolLength802
end InitE.BackendStages.Metadata
