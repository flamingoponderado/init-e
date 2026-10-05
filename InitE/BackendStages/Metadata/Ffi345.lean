import InitE.BackendStages.Metadata.Data345
import InitE.BackendStages.Filtered345
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis345_eq : ffiLines Filtered345.lines = localFfis345 := by
  with_unfolding_all rfl
theorem ffiStep345 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis345) : LabToTarget.findFfiNames (Filtered345 :: rest) = suffixFfis345 := by
  rw [findFfiNames_section, localFfis345_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep345
end InitE.BackendStages.Metadata
