import InitE.BackendStages.Metadata.Data577
import InitE.BackendStages.Padded577
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem walkStep577 : walkShmemLines Padded577.lines 375112 beforeFfis577 beforeShmem577 = (375676, afterFfis577, afterShmem577) := by
  with_unfolding_all rfl
theorem shmemStep577 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded577 :: rest) 375112 beforeFfis577 beforeShmem577 = LabToTarget.getShmemInfo rest 375676 afterFfis577 afterShmem577 := by
  rw [getShmemInfo_section, walkStep577]
theorem symbolLength577 : LabToTarget.secLength Padded577.lines 0 = 564 := by
  with_unfolding_all rfl
#print axioms shmemStep577
#print axioms symbolLength577
end InitE.BackendStages.Metadata
