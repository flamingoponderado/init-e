import InitE.BackendStages.Metadata.Data863
import InitE.BackendStages.Padded863
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem walkStep863 : walkShmemLines Padded863.lines 856348 beforeFfis863 beforeShmem863 = (856756, afterFfis863, afterShmem863) := by
  with_unfolding_all rfl
theorem shmemStep863 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded863 :: rest) 856348 beforeFfis863 beforeShmem863 = LabToTarget.getShmemInfo rest 856756 afterFfis863 afterShmem863 := by
  rw [getShmemInfo_section, walkStep863]
theorem symbolLength863 : LabToTarget.secLength Padded863.lines 0 = 408 := by
  with_unfolding_all rfl
#print axioms shmemStep863
#print axioms symbolLength863
end InitE.BackendStages.Metadata
