import InitE.BackendStages.Metadata.Data101
import InitE.BackendStages.Filtered101
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis101_eq : ffiLines Filtered101.lines = localFfis101 := by
  with_unfolding_all rfl
theorem ffiStep101 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis101) : LabToTarget.findFfiNames (Filtered101 :: rest) = suffixFfis101 := by
  rw [findFfiNames_section, localFfis101_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep101
end InitE.BackendStages.Metadata
