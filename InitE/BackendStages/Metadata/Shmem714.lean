import InitE.BackendStages.Metadata.Data714
import InitE.BackendStages.Padded714
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem walkStep714 : walkShmemLines Padded714.lines 644008 beforeFfis714 beforeShmem714 = (644052, afterFfis714, afterShmem714) := by
  with_unfolding_all rfl
theorem shmemStep714 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded714 :: rest) 644008 beforeFfis714 beforeShmem714 = LabToTarget.getShmemInfo rest 644052 afterFfis714 afterShmem714 := by
  rw [getShmemInfo_section, walkStep714]
theorem symbolLength714 : LabToTarget.secLength Padded714.lines 0 = 44 := by
  with_unfolding_all rfl
#print axioms shmemStep714
#print axioms symbolLength714
end InitE.BackendStages.Metadata
