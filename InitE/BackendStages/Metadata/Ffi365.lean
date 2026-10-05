import InitE.BackendStages.Metadata.Data365
import InitE.BackendStages.Filtered365
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis365_eq : ffiLines Filtered365.lines = localFfis365 := by
  with_unfolding_all rfl
theorem ffiStep365 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis365) : LabToTarget.findFfiNames (Filtered365 :: rest) = suffixFfis365 := by
  rw [findFfiNames_section, localFfis365_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep365
end InitE.BackendStages.Metadata
