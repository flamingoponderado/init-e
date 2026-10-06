import InitE.BackendStages.Metadata.Data456
import InitE.BackendStages.Filtered456
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis456_eq : ffiLines Filtered456.lines = localFfis456 := by
  with_unfolding_all rfl
theorem ffiStep456 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis456) : LabToTarget.findFfiNames (Filtered456 :: rest) = suffixFfis456 := by
  rw [findFfiNames_section, localFfis456_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep456
end InitE.BackendStages.Metadata
