import InitE.BackendStages.Metadata.Data812
import InitE.BackendStages.Filtered812
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis812_eq : ffiLines Filtered812.lines = localFfis812 := by
  with_unfolding_all rfl
theorem ffiStep812 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis812) : LabToTarget.findFfiNames (Filtered812 :: rest) = suffixFfis812 := by
  rw [findFfiNames_section, localFfis812_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep812
end InitE.BackendStages.Metadata
