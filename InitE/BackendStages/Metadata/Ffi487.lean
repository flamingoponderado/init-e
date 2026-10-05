import InitE.BackendStages.Metadata.Data487
import InitE.BackendStages.Filtered487
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis487_eq : ffiLines Filtered487.lines = localFfis487 := by
  with_unfolding_all rfl
theorem ffiStep487 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis487) : LabToTarget.findFfiNames (Filtered487 :: rest) = suffixFfis487 := by
  rw [findFfiNames_section, localFfis487_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep487
end InitE.BackendStages.Metadata
