import InitE.BackendStages.Metadata.Data87
import InitE.BackendStages.Filtered87
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis87_eq : ffiLines Filtered87.lines = localFfis87 := by
  with_unfolding_all rfl
theorem ffiStep87 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis87) : LabToTarget.findFfiNames (Filtered87 :: rest) = suffixFfis87 := by
  rw [findFfiNames_section, localFfis87_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep87
end InitE.BackendStages.Metadata
