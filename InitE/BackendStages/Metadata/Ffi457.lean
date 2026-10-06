import InitE.BackendStages.Metadata.Data457
import InitE.BackendStages.Filtered457
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis457_eq : ffiLines Filtered457.lines = localFfis457 := by
  with_unfolding_all rfl
theorem ffiStep457 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis457) : LabToTarget.findFfiNames (Filtered457 :: rest) = suffixFfis457 := by
  rw [findFfiNames_section, localFfis457_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep457
end InitE.BackendStages.Metadata
