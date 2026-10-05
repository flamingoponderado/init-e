import InitE.BackendStages.Metadata.Data410
import InitE.BackendStages.Filtered410
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis410_eq : ffiLines Filtered410.lines = localFfis410 := by
  with_unfolding_all rfl
theorem ffiStep410 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis410) : LabToTarget.findFfiNames (Filtered410 :: rest) = suffixFfis410 := by
  rw [findFfiNames_section, localFfis410_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep410
end InitE.BackendStages.Metadata
