import InitE.BackendStages.Metadata.Data231
import InitE.BackendStages.Filtered231
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis231_eq : ffiLines Filtered231.lines = localFfis231 := by
  with_unfolding_all rfl
theorem ffiStep231 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis231) : LabToTarget.findFfiNames (Filtered231 :: rest) = suffixFfis231 := by
  rw [findFfiNames_section, localFfis231_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep231
end InitE.BackendStages.Metadata
