import InitE.BackendStages.Metadata.Data736
import InitE.BackendStages.Padded736
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem walkStep736 : walkShmemLines Padded736.lines 654960 beforeFfis736 beforeShmem736 = (655852, afterFfis736, afterShmem736) := by
  with_unfolding_all rfl
theorem shmemStep736 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded736 :: rest) 654960 beforeFfis736 beforeShmem736 = LabToTarget.getShmemInfo rest 655852 afterFfis736 afterShmem736 := by
  rw [getShmemInfo_section, walkStep736]
theorem symbolLength736 : LabToTarget.secLength Padded736.lines 0 = 892 := by
  with_unfolding_all rfl
#print axioms shmemStep736
#print axioms symbolLength736
end InitE.BackendStages.Metadata
