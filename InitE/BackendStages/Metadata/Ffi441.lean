import InitE.BackendStages.Metadata.Data441
import InitE.BackendStages.Filtered441
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis441_eq : ffiLines Filtered441.lines = localFfis441 := by
  with_unfolding_all rfl
theorem ffiStep441 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis441) : LabToTarget.findFfiNames (Filtered441 :: rest) = suffixFfis441 := by
  rw [findFfiNames_section, localFfis441_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep441
end InitE.BackendStages.Metadata
