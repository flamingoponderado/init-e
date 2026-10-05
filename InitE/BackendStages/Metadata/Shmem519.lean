import InitE.BackendStages.Metadata.Data519
import InitE.BackendStages.Padded519
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem walkStep519 : walkShmemLines Padded519.lines 327420 beforeFfis519 beforeShmem519 = (327936, afterFfis519, afterShmem519) := by
  with_unfolding_all rfl
theorem shmemStep519 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded519 :: rest) 327420 beforeFfis519 beforeShmem519 = LabToTarget.getShmemInfo rest 327936 afterFfis519 afterShmem519 := by
  rw [getShmemInfo_section, walkStep519]
theorem symbolLength519 : LabToTarget.secLength Padded519.lines 0 = 516 := by
  with_unfolding_all rfl
#print axioms shmemStep519
#print axioms symbolLength519
end InitE.BackendStages.Metadata
