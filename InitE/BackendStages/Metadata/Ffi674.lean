import InitE.BackendStages.Metadata.Data674
import InitE.BackendStages.Filtered674
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis674_eq : ffiLines Filtered674.lines = localFfis674 := by
  with_unfolding_all rfl
theorem ffiStep674 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis674) : LabToTarget.findFfiNames (Filtered674 :: rest) = suffixFfis674 := by
  rw [findFfiNames_section, localFfis674_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep674
end InitE.BackendStages.Metadata
