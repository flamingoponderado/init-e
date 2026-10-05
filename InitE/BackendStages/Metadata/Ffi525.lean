import InitE.BackendStages.Metadata.Data525
import InitE.BackendStages.Filtered525
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis525_eq : ffiLines Filtered525.lines = localFfis525 := by
  with_unfolding_all rfl
theorem ffiStep525 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis525) : LabToTarget.findFfiNames (Filtered525 :: rest) = suffixFfis525 := by
  rw [findFfiNames_section, localFfis525_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep525
end InitE.BackendStages.Metadata
