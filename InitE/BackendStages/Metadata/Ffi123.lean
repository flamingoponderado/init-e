import InitE.BackendStages.Metadata.Data123
import InitE.BackendStages.Filtered123
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis123_eq : ffiLines Filtered123.lines = localFfis123 := by
  with_unfolding_all rfl
theorem ffiStep123 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis123) : LabToTarget.findFfiNames (Filtered123 :: rest) = suffixFfis123 := by
  rw [findFfiNames_section, localFfis123_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep123
end InitE.BackendStages.Metadata
