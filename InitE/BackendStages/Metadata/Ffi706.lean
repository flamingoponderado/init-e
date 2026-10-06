import InitE.BackendStages.Metadata.Data706
import InitE.BackendStages.Filtered706
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis706_eq : ffiLines Filtered706.lines = localFfis706 := by
  with_unfolding_all rfl
theorem ffiStep706 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis706) : LabToTarget.findFfiNames (Filtered706 :: rest) = suffixFfis706 := by
  rw [findFfiNames_section, localFfis706_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep706
end InitE.BackendStages.Metadata
