import InitE.BackendStages.Metadata.Data376
import InitE.BackendStages.Padded376
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem walkStep376 : walkShmemLines Padded376.lines 231756 beforeFfis376 beforeShmem376 = (231772, afterFfis376, afterShmem376) := by
  with_unfolding_all rfl
theorem shmemStep376 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded376 :: rest) 231756 beforeFfis376 beforeShmem376 = LabToTarget.getShmemInfo rest 231772 afterFfis376 afterShmem376 := by
  rw [getShmemInfo_section, walkStep376]
theorem symbolLength376 : LabToTarget.secLength Padded376.lines 0 = 16 := by
  with_unfolding_all rfl
#print axioms shmemStep376
#print axioms symbolLength376
end InitE.BackendStages.Metadata
