import InitE.BackendStages.Metadata.Data607
import InitE.BackendStages.Filtered607
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis607_eq : ffiLines Filtered607.lines = localFfis607 := by
  with_unfolding_all rfl
theorem ffiStep607 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis607) : LabToTarget.findFfiNames (Filtered607 :: rest) = suffixFfis607 := by
  rw [findFfiNames_section, localFfis607_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep607
end InitE.BackendStages.Metadata
