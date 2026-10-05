import InitE.BackendStages.Metadata.Data505
import InitE.BackendStages.Filtered505
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis505_eq : ffiLines Filtered505.lines = localFfis505 := by
  with_unfolding_all rfl
theorem ffiStep505 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis505) : LabToTarget.findFfiNames (Filtered505 :: rest) = suffixFfis505 := by
  rw [findFfiNames_section, localFfis505_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep505
end InitE.BackendStages.Metadata
