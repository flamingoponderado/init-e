import InitE.BackendStages.Metadata.Data368
import InitE.BackendStages.Padded368
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem walkStep368 : walkShmemLines Padded368.lines 227296 beforeFfis368 beforeShmem368 = (227632, afterFfis368, afterShmem368) := by
  with_unfolding_all rfl
theorem shmemStep368 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded368 :: rest) 227296 beforeFfis368 beforeShmem368 = LabToTarget.getShmemInfo rest 227632 afterFfis368 afterShmem368 := by
  rw [getShmemInfo_section, walkStep368]
theorem symbolLength368 : LabToTarget.secLength Padded368.lines 0 = 336 := by
  with_unfolding_all rfl
#print axioms shmemStep368
#print axioms symbolLength368
end InitE.BackendStages.Metadata
