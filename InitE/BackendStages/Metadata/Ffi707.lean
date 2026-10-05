import InitE.BackendStages.Metadata.Data707
import InitE.BackendStages.Filtered707
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis707_eq : ffiLines Filtered707.lines = localFfis707 := by
  with_unfolding_all rfl
theorem ffiStep707 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis707) : LabToTarget.findFfiNames (Filtered707 :: rest) = suffixFfis707 := by
  rw [findFfiNames_section, localFfis707_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep707
end InitE.BackendStages.Metadata
