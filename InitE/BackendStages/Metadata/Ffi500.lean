import InitE.BackendStages.Metadata.Data500
import InitE.BackendStages.Filtered500
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis500_eq : ffiLines Filtered500.lines = localFfis500 := by
  with_unfolding_all rfl
theorem ffiStep500 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis500) : LabToTarget.findFfiNames (Filtered500 :: rest) = suffixFfis500 := by
  rw [findFfiNames_section, localFfis500_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep500
end InitE.BackendStages.Metadata
