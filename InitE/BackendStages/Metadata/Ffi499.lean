import InitE.BackendStages.Metadata.Data499
import InitE.BackendStages.Filtered499
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis499_eq : ffiLines Filtered499.lines = localFfis499 := by
  with_unfolding_all rfl
theorem ffiStep499 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis499) : LabToTarget.findFfiNames (Filtered499 :: rest) = suffixFfis499 := by
  rw [findFfiNames_section, localFfis499_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep499
end InitE.BackendStages.Metadata
