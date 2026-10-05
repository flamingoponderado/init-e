import InitE.BackendStages.Metadata.Data542
import InitE.BackendStages.Filtered542
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis542_eq : ffiLines Filtered542.lines = localFfis542 := by
  with_unfolding_all rfl
theorem ffiStep542 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis542) : LabToTarget.findFfiNames (Filtered542 :: rest) = suffixFfis542 := by
  rw [findFfiNames_section, localFfis542_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep542
end InitE.BackendStages.Metadata
