import InitE.BackendStages.Metadata.Data306
import InitE.BackendStages.Filtered306
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis306_eq : ffiLines Filtered306.lines = localFfis306 := by
  with_unfolding_all rfl
theorem ffiStep306 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis306) : LabToTarget.findFfiNames (Filtered306 :: rest) = suffixFfis306 := by
  rw [findFfiNames_section, localFfis306_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep306
end InitE.BackendStages.Metadata
