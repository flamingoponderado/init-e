import InitE.BackendStages.Metadata.Data618
import InitE.BackendStages.Padded618
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem walkStep618 : walkShmemLines Padded618.lines 431900 beforeFfis618 beforeShmem618 = (434560, afterFfis618, afterShmem618) := by
  with_unfolding_all rfl
theorem shmemStep618 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded618 :: rest) 431900 beforeFfis618 beforeShmem618 = LabToTarget.getShmemInfo rest 434560 afterFfis618 afterShmem618 := by
  rw [getShmemInfo_section, walkStep618]
theorem symbolLength618 : LabToTarget.secLength Padded618.lines 0 = 2660 := by
  with_unfolding_all rfl
#print axioms shmemStep618
#print axioms symbolLength618
end InitE.BackendStages.Metadata
