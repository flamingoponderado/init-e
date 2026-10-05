import InitE.BackendStages.Metadata.Data187
import InitE.BackendStages.Filtered187
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis187_eq : ffiLines Filtered187.lines = localFfis187 := by
  with_unfolding_all rfl
theorem ffiStep187 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis187) : LabToTarget.findFfiNames (Filtered187 :: rest) = suffixFfis187 := by
  rw [findFfiNames_section, localFfis187_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep187
end InitE.BackendStages.Metadata
