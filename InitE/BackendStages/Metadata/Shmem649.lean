import InitE.BackendStages.Metadata.Data649
import InitE.BackendStages.Padded649
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem walkStep649 : walkShmemLines Padded649.lines 497448 beforeFfis649 beforeShmem649 = (497560, afterFfis649, afterShmem649) := by
  with_unfolding_all rfl
theorem shmemStep649 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded649 :: rest) 497448 beforeFfis649 beforeShmem649 = LabToTarget.getShmemInfo rest 497560 afterFfis649 afterShmem649 := by
  rw [getShmemInfo_section, walkStep649]
theorem symbolLength649 : LabToTarget.secLength Padded649.lines 0 = 112 := by
  with_unfolding_all rfl
#print axioms shmemStep649
#print axioms symbolLength649
end InitE.BackendStages.Metadata
