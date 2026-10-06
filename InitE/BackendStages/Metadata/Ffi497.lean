import InitE.BackendStages.Metadata.Data497
import InitE.BackendStages.Filtered497
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis497_eq : ffiLines Filtered497.lines = localFfis497 := by
  with_unfolding_all rfl
theorem ffiStep497 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis497) : LabToTarget.findFfiNames (Filtered497 :: rest) = suffixFfis497 := by
  rw [findFfiNames_section, localFfis497_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep497
end InitE.BackendStages.Metadata
