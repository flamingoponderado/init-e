import InitE.BackendStages.Metadata.Data471
import InitE.BackendStages.Filtered471
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis471_eq : ffiLines Filtered471.lines = localFfis471 := by
  with_unfolding_all rfl
theorem ffiStep471 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis471) : LabToTarget.findFfiNames (Filtered471 :: rest) = suffixFfis471 := by
  rw [findFfiNames_section, localFfis471_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep471
end InitE.BackendStages.Metadata
