import InitE.BackendStages.Metadata.Data199
import InitE.BackendStages.Filtered199
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis199_eq : ffiLines Filtered199.lines = localFfis199 := by
  with_unfolding_all rfl
theorem ffiStep199 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis199) : LabToTarget.findFfiNames (Filtered199 :: rest) = suffixFfis199 := by
  rw [findFfiNames_section, localFfis199_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep199
end InitE.BackendStages.Metadata
