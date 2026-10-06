import InitE.BackendStages.Metadata.Data663
import InitE.BackendStages.Filtered663
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis663_eq : ffiLines Filtered663.lines = localFfis663 := by
  with_unfolding_all rfl
theorem ffiStep663 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis663) : LabToTarget.findFfiNames (Filtered663 :: rest) = suffixFfis663 := by
  rw [findFfiNames_section, localFfis663_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep663
end InitE.BackendStages.Metadata
