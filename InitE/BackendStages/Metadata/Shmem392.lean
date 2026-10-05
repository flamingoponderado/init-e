import InitE.BackendStages.Metadata.Data392
import InitE.BackendStages.Padded392
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem walkStep392 : walkShmemLines Padded392.lines 245076 beforeFfis392 beforeShmem392 = (245096, afterFfis392, afterShmem392) := by
  with_unfolding_all rfl
theorem shmemStep392 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded392 :: rest) 245076 beforeFfis392 beforeShmem392 = LabToTarget.getShmemInfo rest 245096 afterFfis392 afterShmem392 := by
  rw [getShmemInfo_section, walkStep392]
theorem symbolLength392 : LabToTarget.secLength Padded392.lines 0 = 20 := by
  with_unfolding_all rfl
#print axioms shmemStep392
#print axioms symbolLength392
end InitE.BackendStages.Metadata
