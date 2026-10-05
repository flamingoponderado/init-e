import InitE.BackendStages.Metadata.Data77
import InitE.BackendStages.Filtered77
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis77_eq : ffiLines Filtered77.lines = localFfis77 := by
  with_unfolding_all rfl
theorem ffiStep77 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis77) : LabToTarget.findFfiNames (Filtered77 :: rest) = suffixFfis77 := by
  rw [findFfiNames_section, localFfis77_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep77
end InitE.BackendStages.Metadata
