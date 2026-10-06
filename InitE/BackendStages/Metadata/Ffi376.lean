import InitE.BackendStages.Metadata.Data376
import InitE.BackendStages.Filtered376
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis376_eq : ffiLines Filtered376.lines = localFfis376 := by
  with_unfolding_all rfl
theorem ffiStep376 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis376) : LabToTarget.findFfiNames (Filtered376 :: rest) = suffixFfis376 := by
  rw [findFfiNames_section, localFfis376_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep376
end InitE.BackendStages.Metadata
