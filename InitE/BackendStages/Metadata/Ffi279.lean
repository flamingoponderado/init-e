import InitE.BackendStages.Metadata.Data279
import InitE.BackendStages.Filtered279
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis279_eq : ffiLines Filtered279.lines = localFfis279 := by
  with_unfolding_all rfl
theorem ffiStep279 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis279) : LabToTarget.findFfiNames (Filtered279 :: rest) = suffixFfis279 := by
  rw [findFfiNames_section, localFfis279_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep279
end InitE.BackendStages.Metadata
