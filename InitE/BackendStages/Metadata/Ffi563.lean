import InitE.BackendStages.Metadata.Data563
import InitE.BackendStages.Filtered563
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis563_eq : ffiLines Filtered563.lines = localFfis563 := by
  with_unfolding_all rfl
theorem ffiStep563 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis563) : LabToTarget.findFfiNames (Filtered563 :: rest) = suffixFfis563 := by
  rw [findFfiNames_section, localFfis563_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep563
end InitE.BackendStages.Metadata
