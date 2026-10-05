import InitE.BackendStages.Metadata.Data829
import InitE.BackendStages.Padded829
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem walkStep829 : walkShmemLines Padded829.lines 809388 beforeFfis829 beforeShmem829 = (812488, afterFfis829, afterShmem829) := by
  with_unfolding_all rfl
theorem shmemStep829 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded829 :: rest) 809388 beforeFfis829 beforeShmem829 = LabToTarget.getShmemInfo rest 812488 afterFfis829 afterShmem829 := by
  rw [getShmemInfo_section, walkStep829]
theorem symbolLength829 : LabToTarget.secLength Padded829.lines 0 = 3100 := by
  with_unfolding_all rfl
#print axioms shmemStep829
#print axioms symbolLength829
end InitE.BackendStages.Metadata
