import InitE.BackendStages.Metadata.Data661
import InitE.BackendStages.Filtered661
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis661_eq : ffiLines Filtered661.lines = localFfis661 := by
  with_unfolding_all rfl
theorem ffiStep661 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis661) : LabToTarget.findFfiNames (Filtered661 :: rest) = suffixFfis661 := by
  rw [findFfiNames_section, localFfis661_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep661
end InitE.BackendStages.Metadata
