import InitE.BackendStages.Metadata.Data539
import InitE.BackendStages.Filtered539
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis539_eq : ffiLines Filtered539.lines = localFfis539 := by
  with_unfolding_all rfl
theorem ffiStep539 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis539) : LabToTarget.findFfiNames (Filtered539 :: rest) = suffixFfis539 := by
  rw [findFfiNames_section, localFfis539_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep539
end InitE.BackendStages.Metadata
