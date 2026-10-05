import InitE.BackendStages.Metadata.Data763
import InitE.BackendStages.Filtered763
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis763_eq : ffiLines Filtered763.lines = localFfis763 := by
  with_unfolding_all rfl
theorem ffiStep763 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis763) : LabToTarget.findFfiNames (Filtered763 :: rest) = suffixFfis763 := by
  rw [findFfiNames_section, localFfis763_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep763
end InitE.BackendStages.Metadata
