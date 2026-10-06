import InitE.BackendStages.Metadata.Data808
import InitE.BackendStages.Filtered808
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis808_eq : ffiLines Filtered808.lines = localFfis808 := by
  with_unfolding_all rfl
theorem ffiStep808 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis808) : LabToTarget.findFfiNames (Filtered808 :: rest) = suffixFfis808 := by
  rw [findFfiNames_section, localFfis808_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep808
end InitE.BackendStages.Metadata
