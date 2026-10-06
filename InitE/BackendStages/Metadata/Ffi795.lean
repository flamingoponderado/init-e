import InitE.BackendStages.Metadata.Data795
import InitE.BackendStages.Filtered795
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis795_eq : ffiLines Filtered795.lines = localFfis795 := by
  with_unfolding_all rfl
theorem ffiStep795 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis795) : LabToTarget.findFfiNames (Filtered795 :: rest) = suffixFfis795 := by
  rw [findFfiNames_section, localFfis795_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep795
end InitE.BackendStages.Metadata
