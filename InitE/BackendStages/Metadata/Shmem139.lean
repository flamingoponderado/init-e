import InitE.BackendStages.Metadata.Data139
import InitE.BackendStages.Padded139
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem walkStep139 : walkShmemLines Padded139.lines 27284 beforeFfis139 beforeShmem139 = (27432, afterFfis139, afterShmem139) := by
  with_unfolding_all rfl
theorem shmemStep139 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded139 :: rest) 27284 beforeFfis139 beforeShmem139 = LabToTarget.getShmemInfo rest 27432 afterFfis139 afterShmem139 := by
  rw [getShmemInfo_section, walkStep139]
theorem symbolLength139 : LabToTarget.secLength Padded139.lines 0 = 148 := by
  with_unfolding_all rfl
#print axioms shmemStep139
#print axioms symbolLength139
end InitE.BackendStages.Metadata
