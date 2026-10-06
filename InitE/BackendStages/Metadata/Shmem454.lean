import InitE.BackendStages.Metadata.Data454
import InitE.BackendStages.Padded454
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem walkStep454 : walkShmemLines Padded454.lines 277532 beforeFfis454 beforeShmem454 = (277880, afterFfis454, afterShmem454) := by
  with_unfolding_all rfl
theorem shmemStep454 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded454 :: rest) 277532 beforeFfis454 beforeShmem454 = LabToTarget.getShmemInfo rest 277880 afterFfis454 afterShmem454 := by
  rw [getShmemInfo_section, walkStep454]
theorem symbolLength454 : LabToTarget.secLength Padded454.lines 0 = 348 := by
  with_unfolding_all rfl
#print axioms shmemStep454
#print axioms symbolLength454
end InitE.BackendStages.Metadata
