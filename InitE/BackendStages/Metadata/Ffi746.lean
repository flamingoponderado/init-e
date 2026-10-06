import InitE.BackendStages.Metadata.Data746
import InitE.BackendStages.Filtered746
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis746_eq : ffiLines Filtered746.lines = localFfis746 := by
  with_unfolding_all rfl
theorem ffiStep746 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis746) : LabToTarget.findFfiNames (Filtered746 :: rest) = suffixFfis746 := by
  rw [findFfiNames_section, localFfis746_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep746
end InitE.BackendStages.Metadata
