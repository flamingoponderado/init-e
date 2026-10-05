import InitE.BackendStages.Metadata.Data346
import InitE.BackendStages.Filtered346
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis346_eq : ffiLines Filtered346.lines = localFfis346 := by
  with_unfolding_all rfl
theorem ffiStep346 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis346) : LabToTarget.findFfiNames (Filtered346 :: rest) = suffixFfis346 := by
  rw [findFfiNames_section, localFfis346_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep346
end InitE.BackendStages.Metadata
