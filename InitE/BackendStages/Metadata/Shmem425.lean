import InitE.BackendStages.Metadata.Data425
import InitE.BackendStages.Padded425
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem walkStep425 : walkShmemLines Padded425.lines 259704 beforeFfis425 beforeShmem425 = (260112, afterFfis425, afterShmem425) := by
  with_unfolding_all rfl
theorem shmemStep425 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded425 :: rest) 259704 beforeFfis425 beforeShmem425 = LabToTarget.getShmemInfo rest 260112 afterFfis425 afterShmem425 := by
  rw [getShmemInfo_section, walkStep425]
theorem symbolLength425 : LabToTarget.secLength Padded425.lines 0 = 408 := by
  with_unfolding_all rfl
#print axioms shmemStep425
#print axioms symbolLength425
end InitE.BackendStages.Metadata
