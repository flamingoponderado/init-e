import InitE.BackendStages.Metadata.Data133
import InitE.BackendStages.Filtered133
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis133_eq : ffiLines Filtered133.lines = localFfis133 := by
  with_unfolding_all rfl
theorem ffiStep133 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis133) : LabToTarget.findFfiNames (Filtered133 :: rest) = suffixFfis133 := by
  rw [findFfiNames_section, localFfis133_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep133
end InitE.BackendStages.Metadata
