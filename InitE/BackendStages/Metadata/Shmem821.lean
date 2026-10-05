import InitE.BackendStages.Metadata.Data821
import InitE.BackendStages.Padded821
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem walkStep821 : walkShmemLines Padded821.lines 796932 beforeFfis821 beforeShmem821 = (797388, afterFfis821, afterShmem821) := by
  with_unfolding_all rfl
theorem shmemStep821 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded821 :: rest) 796932 beforeFfis821 beforeShmem821 = LabToTarget.getShmemInfo rest 797388 afterFfis821 afterShmem821 := by
  rw [getShmemInfo_section, walkStep821]
theorem symbolLength821 : LabToTarget.secLength Padded821.lines 0 = 456 := by
  with_unfolding_all rfl
#print axioms shmemStep821
#print axioms symbolLength821
end InitE.BackendStages.Metadata
