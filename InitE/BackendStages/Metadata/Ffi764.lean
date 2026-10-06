import InitE.BackendStages.Metadata.Data764
import InitE.BackendStages.Filtered764
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis764_eq : ffiLines Filtered764.lines = localFfis764 := by
  with_unfolding_all rfl
theorem ffiStep764 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis764) : LabToTarget.findFfiNames (Filtered764 :: rest) = suffixFfis764 := by
  rw [findFfiNames_section, localFfis764_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep764
end InitE.BackendStages.Metadata
