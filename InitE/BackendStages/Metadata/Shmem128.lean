import InitE.BackendStages.Metadata.Data128
import InitE.BackendStages.Padded128
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem walkStep128 : walkShmemLines Padded128.lines 21620 beforeFfis128 beforeShmem128 = (22424, afterFfis128, afterShmem128) := by
  with_unfolding_all rfl
theorem shmemStep128 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded128 :: rest) 21620 beforeFfis128 beforeShmem128 = LabToTarget.getShmemInfo rest 22424 afterFfis128 afterShmem128 := by
  rw [getShmemInfo_section, walkStep128]
theorem symbolLength128 : LabToTarget.secLength Padded128.lines 0 = 804 := by
  with_unfolding_all rfl
#print axioms shmemStep128
#print axioms symbolLength128
end InitE.BackendStages.Metadata
