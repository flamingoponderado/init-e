import InitE.BackendStages.Metadata.Data111
import InitE.BackendStages.Filtered111
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis111_eq : ffiLines Filtered111.lines = localFfis111 := by
  with_unfolding_all rfl
theorem ffiStep111 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis111) : LabToTarget.findFfiNames (Filtered111 :: rest) = suffixFfis111 := by
  rw [findFfiNames_section, localFfis111_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep111
end InitE.BackendStages.Metadata
