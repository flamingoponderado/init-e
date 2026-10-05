import InitE.BackendStages.Metadata.Data867
import InitE.BackendStages.Filtered867
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis867_eq : ffiLines Filtered867.lines = localFfis867 := by
  with_unfolding_all rfl
theorem ffiStep867 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis867) : LabToTarget.findFfiNames (Filtered867 :: rest) = suffixFfis867 := by
  rw [findFfiNames_section, localFfis867_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep867
end InitE.BackendStages.Metadata
