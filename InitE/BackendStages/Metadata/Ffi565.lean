import InitE.BackendStages.Metadata.Data565
import InitE.BackendStages.Filtered565
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis565_eq : ffiLines Filtered565.lines = localFfis565 := by
  with_unfolding_all rfl
theorem ffiStep565 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis565) : LabToTarget.findFfiNames (Filtered565 :: rest) = suffixFfis565 := by
  rw [findFfiNames_section, localFfis565_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep565
end InitE.BackendStages.Metadata
