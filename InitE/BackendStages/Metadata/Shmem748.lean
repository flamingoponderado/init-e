import InitE.BackendStages.Metadata.Data748
import InitE.BackendStages.Padded748
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem walkStep748 : walkShmemLines Padded748.lines 660120 beforeFfis748 beforeShmem748 = (660128, afterFfis748, afterShmem748) := by
  with_unfolding_all rfl
theorem shmemStep748 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded748 :: rest) 660120 beforeFfis748 beforeShmem748 = LabToTarget.getShmemInfo rest 660128 afterFfis748 afterShmem748 := by
  rw [getShmemInfo_section, walkStep748]
theorem symbolLength748 : LabToTarget.secLength Padded748.lines 0 = 8 := by
  with_unfolding_all rfl
#print axioms shmemStep748
#print axioms symbolLength748
end InitE.BackendStages.Metadata
