import InitE.BackendStages.Metadata.Data102
import InitE.BackendStages.Padded102
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem walkStep102 : walkShmemLines Padded102.lines 11060 beforeFfis102 beforeShmem102 = (11096, afterFfis102, afterShmem102) := by
  with_unfolding_all rfl
theorem shmemStep102 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded102 :: rest) 11060 beforeFfis102 beforeShmem102 = LabToTarget.getShmemInfo rest 11096 afterFfis102 afterShmem102 := by
  rw [getShmemInfo_section, walkStep102]
theorem symbolLength102 : LabToTarget.secLength Padded102.lines 0 = 36 := by
  with_unfolding_all rfl
#print axioms shmemStep102
#print axioms symbolLength102
end InitE.BackendStages.Metadata
