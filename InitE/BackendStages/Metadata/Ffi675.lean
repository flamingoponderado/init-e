import InitE.BackendStages.Metadata.Data675
import InitE.BackendStages.Filtered675
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis675_eq : ffiLines Filtered675.lines = localFfis675 := by
  with_unfolding_all rfl
theorem ffiStep675 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis675) : LabToTarget.findFfiNames (Filtered675 :: rest) = suffixFfis675 := by
  rw [findFfiNames_section, localFfis675_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep675
end InitE.BackendStages.Metadata
