import InitE.BackendStages.Metadata.Data758
import InitE.BackendStages.Filtered758
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis758_eq : ffiLines Filtered758.lines = localFfis758 := by
  with_unfolding_all rfl
theorem ffiStep758 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis758) : LabToTarget.findFfiNames (Filtered758 :: rest) = suffixFfis758 := by
  rw [findFfiNames_section, localFfis758_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep758
end InitE.BackendStages.Metadata
