import InitE.BackendStages.Metadata.Data377
import InitE.BackendStages.Filtered377
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis377_eq : ffiLines Filtered377.lines = localFfis377 := by
  with_unfolding_all rfl
theorem ffiStep377 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis377) : LabToTarget.findFfiNames (Filtered377 :: rest) = suffixFfis377 := by
  rw [findFfiNames_section, localFfis377_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep377
end InitE.BackendStages.Metadata
