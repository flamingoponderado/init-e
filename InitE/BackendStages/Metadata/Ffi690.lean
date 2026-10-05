import InitE.BackendStages.Metadata.Data690
import InitE.BackendStages.Filtered690
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis690_eq : ffiLines Filtered690.lines = localFfis690 := by
  with_unfolding_all rfl
theorem ffiStep690 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis690) : LabToTarget.findFfiNames (Filtered690 :: rest) = suffixFfis690 := by
  rw [findFfiNames_section, localFfis690_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep690
end InitE.BackendStages.Metadata
