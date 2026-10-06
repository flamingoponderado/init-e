import InitE.BackendStages.Metadata.Data128
import InitE.BackendStages.Filtered128
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis128_eq : ffiLines Filtered128.lines = localFfis128 := by
  with_unfolding_all rfl
theorem ffiStep128 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis128) : LabToTarget.findFfiNames (Filtered128 :: rest) = suffixFfis128 := by
  rw [findFfiNames_section, localFfis128_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep128
end InitE.BackendStages.Metadata
