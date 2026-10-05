import InitE.BackendStages.Metadata.Data842
import InitE.BackendStages.Padded842
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem walkStep842 : walkShmemLines Padded842.lines 822444 beforeFfis842 beforeShmem842 = (822800, afterFfis842, afterShmem842) := by
  with_unfolding_all rfl
theorem shmemStep842 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded842 :: rest) 822444 beforeFfis842 beforeShmem842 = LabToTarget.getShmemInfo rest 822800 afterFfis842 afterShmem842 := by
  rw [getShmemInfo_section, walkStep842]
theorem symbolLength842 : LabToTarget.secLength Padded842.lines 0 = 356 := by
  with_unfolding_all rfl
#print axioms shmemStep842
#print axioms symbolLength842
end InitE.BackendStages.Metadata
