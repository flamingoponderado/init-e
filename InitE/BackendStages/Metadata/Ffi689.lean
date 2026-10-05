import InitE.BackendStages.Metadata.Data689
import InitE.BackendStages.Filtered689
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis689_eq : ffiLines Filtered689.lines = localFfis689 := by
  with_unfolding_all rfl
theorem ffiStep689 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis689) : LabToTarget.findFfiNames (Filtered689 :: rest) = suffixFfis689 := by
  rw [findFfiNames_section, localFfis689_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep689
end InitE.BackendStages.Metadata
