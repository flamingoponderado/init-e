import InitE.BackendStages.Metadata.Data107
import InitE.BackendStages.Filtered107
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis107_eq : ffiLines Filtered107.lines = localFfis107 := by
  with_unfolding_all rfl
theorem ffiStep107 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis107) : LabToTarget.findFfiNames (Filtered107 :: rest) = suffixFfis107 := by
  rw [findFfiNames_section, localFfis107_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep107
end InitE.BackendStages.Metadata
