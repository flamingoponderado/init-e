import InitE.BackendStages.Metadata.Data367
import InitE.BackendStages.Filtered367
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis367_eq : ffiLines Filtered367.lines = localFfis367 := by
  with_unfolding_all rfl
theorem ffiStep367 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis367) : LabToTarget.findFfiNames (Filtered367 :: rest) = suffixFfis367 := by
  rw [findFfiNames_section, localFfis367_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep367
end InitE.BackendStages.Metadata
