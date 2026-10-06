import InitE.BackendStages.Metadata.Data667
import InitE.BackendStages.Filtered667
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis667_eq : ffiLines Filtered667.lines = localFfis667 := by
  with_unfolding_all rfl
theorem ffiStep667 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis667) : LabToTarget.findFfiNames (Filtered667 :: rest) = suffixFfis667 := by
  rw [findFfiNames_section, localFfis667_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep667
end InitE.BackendStages.Metadata
